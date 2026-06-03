import fetch from "node-fetch";

import { MongoContext } from "coral-server/data/context";
import logger from "coral-server/logger";
import { Comment, getLatestRevision } from "coral-server/models/comment";
import { retrieveStory, Story } from "coral-server/models/story";
import { Tenant } from "coral-server/models/tenant";
import { retrieveUser } from "coral-server/models/user";

import { GQLCOMMENT_FLAG_REPORTED_REASON } from "coral-server/graph/schema/__generated__/types";

const DSA_GUARD_ITEM_TYPE = "articleForumPost";
const DSA_GUARD_OTHER_REASON = 1000;
const DSA_GUARD_TOKEN_PLACEHOLDER = "coral-backend";
const DSA_GUARD_REPORT_STATUS_NEW = 0;

const REASON_TO_INT: Partial<Record<GQLCOMMENT_FLAG_REPORTED_REASON, number>> =
  {
    [GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_SPAM]: 1,
    [GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_OFFENSIVE]: 2,
    [GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_COPYRIGHT]: 3,
    [GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_OTHER]:
      DSA_GUARD_OTHER_REASON,
  };

export function mapReasonToDSAGuard(
  reason: GQLCOMMENT_FLAG_REPORTED_REASON
): number {
  return REASON_TO_INT[reason] ?? DSA_GUARD_OTHER_REASON;
}

export interface DSAGuardReportInput {
  itemWebsite: string;
  comment: Readonly<Comment>;
  story: Readonly<Story>;
  authorUsername: string | null;
  additionalDetails: string | undefined;
  reporterName: string | undefined;
  reporterEmail: string | undefined;
  reason: GQLCOMMENT_FLAG_REPORTED_REASON;
}

export function buildDSAGuardReportPayload(input: DSAGuardReportInput) {
  const revision = getLatestRevision(input.comment);
  const baseUrl = input.story.url;

  return {
    token: DSA_GUARD_TOKEN_PLACEHOLDER,
    itemWebsite: input.itemWebsite,
    itemId: `[${input.itemWebsite}_${DSA_GUARD_ITEM_TYPE}]_${input.comment.id}`,
    itemUrl: `${baseUrl}#comment-${input.comment.id}`,
    itemUrlBase: baseUrl,
    itemType: DSA_GUARD_ITEM_TYPE,
    itemAuthorName: input.authorUsername ?? "",
    itemContent: revision?.body ?? "",
    itemTitle: input.story.metadata?.title ?? "",
    reportReason: mapReasonToDSAGuard(input.reason),
    reportReasonDetail: input.additionalDetails ?? "",
    reportReporterEmail: input.reporterEmail ?? "",
    reportReporterName: input.reporterName ?? "",
    reportStatus: DSA_GUARD_REPORT_STATUS_NEW,
  };
}

export async function submitReportToDSAGuard(
  apiBase: string,
  input: DSAGuardReportInput
): Promise<void> {
  const payload = buildDSAGuardReportPayload(input);
  const url = `${apiBase.replace(/\/$/, "")}/api/Report`;

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
        "DSA Guard report submission failed"
      );
      return;
    }

    const body = (await response.json().catch(() => null)) as {
      id?: number;
    } | null;
    logger.debug(
      {
        dsaGuardReportId: body?.id,
        coralCommentID: input.comment.id,
      },
      "submitted report to DSA Guard"
    );
  } catch (err) {
    logger.error(
      { err, coralCommentID: input.comment.id },
      "DSA Guard report submission threw"
    );
  }
}

export interface SubmitFlagReportConfig {
  apiBase: string;
  itemWebsite: string;
}

export interface SubmitFlagReportFields {
  reason: GQLCOMMENT_FLAG_REPORTED_REASON;
  additionalDetails: string | undefined;
  reporterName: string | undefined;
  reporterEmail: string | undefined;
}

export async function submitFlagReportToDSAGuard(
  mongo: MongoContext,
  tenant: Tenant,
  comment: Readonly<Comment>,
  fields: SubmitFlagReportFields,
  cfg: SubmitFlagReportConfig
): Promise<void> {
  try {
    const story = await retrieveStory(mongo, tenant.id, comment.storyID);
    if (!story) {
      return;
    }

    const author = comment.authorID
      ? await retrieveUser(mongo, tenant.id, comment.authorID)
      : null;

    await submitReportToDSAGuard(cfg.apiBase, {
      itemWebsite: cfg.itemWebsite,
      comment,
      story,
      authorUsername: author?.username ?? null,
      additionalDetails: fields.additionalDetails,
      reporterName: fields.reporterName,
      reporterEmail: fields.reporterEmail,
      reason: fields.reason,
    });
  } catch (err) {
    logger.error(
      { err, coralCommentID: comment.id },
      "DSA Guard flag-report wrapper threw"
    );
  }
}
