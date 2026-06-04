import config from "coral-server/config";
import { MongoContext } from "coral-server/data/context";
import { CoralEventPublisherBroker } from "coral-server/events/publisher";
import { getLatestRevision, hasTag } from "coral-server/models/comment";
import { Tenant } from "coral-server/models/tenant";
import { retrieveUser } from "coral-server/models/user";
import { removeTag } from "coral-server/services/comments";
import { moderate } from "coral-server/services/comments/moderation";
import {
  RejectCommentDSAReason,
  submitRejectActionToDSAGuard,
} from "coral-server/services/dsaGuard";
import { AugmentedRedis } from "coral-server/services/redis";
import { submitCommentAsSpam } from "coral-server/services/spam";
import { Request } from "coral-server/types/express";

import {
  GQLCOMMENT_STATUS,
  GQLTAG,
} from "coral-server/graph/schema/__generated__/types";

import { publishChanges } from "./helpers";
import { updateTagCommentCounts } from "./helpers/updateAllCommentCounts";

export interface RejectCommentDSAFields {
  dsaReason?: RejectCommentDSAReason;
  dsaReasonDetail?: string;
}

const rejectComment = async (
  mongo: MongoContext,
  redis: AugmentedRedis,
  broker: CoralEventPublisherBroker | null,
  tenant: Tenant,
  commentID: string,
  commentRevisionID: string,
  moderatorID: string,
  now: Date,
  request?: Request | undefined,
  dsaFields: RejectCommentDSAFields = {}
) => {
  const updateAllCommentCountsArgs = {
    actionCounts: {},
  };

  // Reject the comment.
  const { result, counts } = await moderate(
    mongo,
    redis,
    tenant,
    {
      commentID,
      commentRevisionID,
      moderatorID,
      status: GQLCOMMENT_STATUS.REJECTED,
    },
    now,
    undefined,
    updateAllCommentCountsArgs
  );

  const revision = getLatestRevision(result.before);
  if (
    revision &&
    tenant.integrations.akismet.enabled &&
    (revision.actionCounts.COMMENT_REPORTED_SPAM > 0 ||
      revision.actionCounts.COMMENT_DETECTED_SPAM > 0)
  ) {
    await submitCommentAsSpam(mongo, tenant, result.before, request);
  }

  // Fire-and-forget DSA Guard moderator-action log for user-reported comments.
  // The wrapper short-circuits if the comment has no COMMENT_REPORTED_* flags.
  const dsaGuardApiBase = config.get("dsa_guard_api_base");
  const dsaGuardItemWebsite = config.get("dsa_guard_item_website");
  if (dsaGuardApiBase && dsaGuardItemWebsite && result.after) {
    const moderator = await retrieveUser(mongo, tenant.id, moderatorID);
    if (moderator) {
      void submitRejectActionToDSAGuard(
        mongo,
        tenant,
        result.after,
        moderator,
        {
          reason: dsaFields.dsaReason,
          reasonDetail: dsaFields.dsaReasonDetail,
        },
        { apiBase: dsaGuardApiBase, itemWebsite: dsaGuardItemWebsite }
      );
    }
  }

  // If the comment hasn't been updated, skip the rest of the steps.
  if (!result.after) {
    return result.before;
  }

  // TODO: (wyattjoh) (tessalt) broker cannot easily be passed to stack from tasks,
  // see CORL-935 in jira
  if (broker && counts) {
    // Publish changes to the event publisher.
    await publishChanges(broker, {
      ...result,
      ...counts,
      moderatorID,
      commentRevisionID,
    });
  }

  // If there was a featured tag on this comment, remove it.
  if (hasTag(result.after, GQLTAG.FEATURED)) {
    const tagResult = removeTag(
      mongo,
      tenant,
      result.after.id,
      GQLTAG.FEATURED
    );

    await updateTagCommentCounts(
      tenant.id,
      result.after.storyID,
      result.after.siteID,
      mongo,
      redis,
      // Create a diff where "before" tags have a featured tag and
      // the "after" does not since the previous `removeTag` took
      // away the featured tag on the comment
      result.after.tags,
      result.after.tags.filter((t) => t.type !== GQLTAG.FEATURED)
    );

    return tagResult;
  }

  // Return the resulting comment.
  return result.after;
};

export default rejectComment;
