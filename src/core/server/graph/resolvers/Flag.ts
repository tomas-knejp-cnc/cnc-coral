import * as actions from "coral-server/models/action/comment";

import {
  GQLCOMMENT_FLAG_REASON,
  GQLFlagTypeResolver,
} from "coral-server/graph/schema/__generated__/types";

import { WrappedCommentRevision } from "./CommentRevision";

interface ReporterMetadata {
  forename?: string;
  surname?: string;
  email?: string;
  gdprConsent?: boolean;
}

function getReporterMetadata(metadata: unknown): ReporterMetadata | null {
  if (!metadata || typeof metadata !== "object") {
    return null;
  }

  const m = metadata as { reporter?: unknown };
  if (!m.reporter || typeof m.reporter !== "object") {
    return null;
  }

  const reporter = m.reporter as Record<string, unknown>;
  return {
    forename:
      typeof reporter.forename === "string" ? reporter.forename : undefined,
    surname:
      typeof reporter.surname === "string" ? reporter.surname : undefined,
    email: typeof reporter.email === "string" ? reporter.email : undefined,
    gdprConsent:
      typeof reporter.gdprConsent === "boolean"
        ? reporter.gdprConsent
        : undefined,
  };
}

export const Flag: GQLFlagTypeResolver<actions.CommentAction> = {
  reason: ({ id, reason }, args, ctx) => {
    if (reason && reason in GQLCOMMENT_FLAG_REASON) {
      return reason;
    }

    ctx.logger.warn(
      { actionID: id, flagReason: reason },
      "found an invalid reason"
    );

    return null;
  },
  flagger: ({ userID }, args, ctx) => {
    if (userID) {
      return ctx.loaders.Users.user.load(userID);
    }

    return null;
  },
  reporterForename: ({ metadata }) =>
    getReporterMetadata(metadata)?.forename ?? null,
  reporterSurname: ({ metadata }) =>
    getReporterMetadata(metadata)?.surname ?? null,
  reporterEmail: ({ metadata }) => getReporterMetadata(metadata)?.email ?? null,
  gdprConsent: ({ metadata }) =>
    getReporterMetadata(metadata)?.gdprConsent ?? null,
  reviewed: ({ reviewed = false }) => reviewed,
  revision: async ({ commentID, commentRevisionID }, args, ctx) => {
    const comment = await ctx.loaders.Comments.comment.load(commentID);
    if (!comment) {
      return null;
    }

    const revision = comment.revisions.find((r) => r.id === commentRevisionID);
    if (!revision) {
      return null;
    }

    // Returning a wrapped revision because this is the format
    // that the `CommentRevision.ts` resolver definition is
    // going to expect.
    const wrappedRevision: WrappedCommentRevision = { revision, comment };
    return wrappedRevision;
  },
  comment: ({ commentID }, args, ctx) =>
    ctx.loaders.Comments.comment.load(commentID),
};
