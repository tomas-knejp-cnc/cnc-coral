import fetch from "node-fetch";

import { MongoContext } from "coral-server/data/context";
import logger from "coral-server/logger";
import { decodeActionCounts } from "coral-server/models/action/comment";
import { Comment, getLatestRevision } from "coral-server/models/comment";
import { retrieveStory, Story } from "coral-server/models/story";
import { Tenant } from "coral-server/models/tenant";
import { retrieveUser, User } from "coral-server/models/user";

export type RejectCommentDSAReason =
  | "PERSONAL_ATTACKS"
  | "SPAM"
  | "OFF_TOPIC"
  | "OTHER";

const DSA_GUARD_ITEM_TYPE = "articleForumPost";
const DSA_GUARD_ACTION_TYPE_REMOVAL = 1;
const DSA_GUARD_REASON_OTHER = 1000;

const REASON_TO_INT: Record<RejectCommentDSAReason, number> = {
  PERSONAL_ATTACKS: 1,
  SPAM: 2,
  OFF_TOPIC: 3,
  OTHER: DSA_GUARD_REASON_OTHER,
};

export function mapRejectReasonToDSAGuard(
  reason: RejectCommentDSAReason | undefined
): number {
  if (!reason) {
    return DSA_GUARD_REASON_OTHER;
  }
  return REASON_TO_INT[reason] ?? DSA_GUARD_REASON_OTHER;
}

export function isUserReported(comment: Readonly<Comment>): boolean {
  const revision = getLatestRevision(comment);
  if (!revision) {
    return false;
  }
  const reasons = decodeActionCounts(revision.actionCounts).flag.reasons;
  return Object.entries(reasons).some(
    ([key, count]) =>
      key.startsWith("COMMENT_REPORTED_") && (count as number) > 0
  );
}

export interface DSAGuardModeratorActionInput {
  itemWebsite: string;
  comment: Readonly<Comment>;
  story: Readonly<Story>;
  authorUsername: string | null;
  authorEmail: string | null;
  authorIp: string | null;
  authorDateTime: Date | null;
  moderatorName: string;
  moderatorEmail: string;
  reason: RejectCommentDSAReason | undefined;
  reasonDetail: string | undefined;
}

export function buildModeratorActionPayload(
  input: DSAGuardModeratorActionInput
) {
  const revision = getLatestRevision(input.comment);
  const baseUrl = input.story.url;

  return {
    items: [
      {
        id: `[${input.itemWebsite}_${DSA_GUARD_ITEM_TYPE}]_${input.comment.id}`,
        itemWebsite: input.itemWebsite,
        itemUrl: `${baseUrl}#comment-${input.comment.id}`,
        itemUrlBase: baseUrl,
        itemType: DSA_GUARD_ITEM_TYPE,
        itemAuthorName: input.authorUsername ?? "",
        itemAuthorEmail: input.authorEmail ?? "",
        itemAuthorIp: input.authorIp ?? "",
        itemTitle: input.story.metadata?.title ?? "",
        itemDateTime:
          input.authorDateTime?.toISOString() ?? new Date(0).toISOString(),
      },
    ],
    itemContent: revision?.body ?? "",
    actionType: DSA_GUARD_ACTION_TYPE_REMOVAL,
    reason: mapRejectReasonToDSAGuard(input.reason),
    reasonDetail: input.reasonDetail ?? "",
    moderatorName: input.moderatorName,
    moderatorEmail: input.moderatorEmail,
  };
}

export async function submitModeratorActionToDSAGuard(
  apiBase: string,
  input: DSAGuardModeratorActionInput
): Promise<void> {
  const payload = buildModeratorActionPayload(input);
  const url = `${apiBase.replace(/\/$/, "")}/api/moderator`;

  try {
    const response = await fetch(url, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify(payload),
    });

    if (!response.ok) {
      const text = await response.text().catch(() => "");
      logger.error(
        {
          status: response.status,
          body: text,
          coralCommentID: input.comment.id,
        },
        "DSA Guard moderator action submission failed"
      );
      return;
    }

    logger.debug(
      { coralCommentID: input.comment.id },
      "submitted moderator action to DSA Guard"
    );
  } catch (err) {
    logger.error(
      { err, coralCommentID: input.comment.id },
      "DSA Guard moderator action submission threw"
    );
  }
}

export interface SubmitModeratorActionConfig {
  apiBase: string;
  itemWebsite: string;
}

export interface SubmitModeratorActionFields {
  reason: RejectCommentDSAReason | undefined;
  reasonDetail: string | undefined;
}

export async function submitRejectActionToDSAGuard(
  mongo: MongoContext,
  tenant: Tenant,
  comment: Readonly<Comment>,
  moderator: Readonly<User>,
  fields: SubmitModeratorActionFields,
  cfg: SubmitModeratorActionConfig
): Promise<void> {
  try {
    if (!isUserReported(comment)) {
      return;
    }

    const story = await retrieveStory(mongo, tenant.id, comment.storyID);
    if (!story) {
      return;
    }

    const author = comment.authorID
      ? await retrieveUser(mongo, tenant.id, comment.authorID)
      : null;

    await submitModeratorActionToDSAGuard(cfg.apiBase, {
      itemWebsite: cfg.itemWebsite,
      comment,
      story,
      authorUsername: author?.username ?? null,
      authorEmail: author?.email ?? null,
      authorIp: null,
      authorDateTime: comment.createdAt ?? null,
      moderatorName: moderator.username ?? "",
      moderatorEmail: moderator.email ?? "",
      reason: fields.reason,
      reasonDetail: fields.reasonDetail,
    });
  } catch (err) {
    logger.error(
      { err, coralCommentID: comment.id },
      "DSA Guard reject-action wrapper threw"
    );
  }
}
