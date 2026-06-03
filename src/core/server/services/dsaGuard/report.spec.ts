import {
  buildDSAGuardReportPayload,
  DSAGuardReportInput,
  mapReasonToDSAGuard,
} from "coral-server/services/dsaGuard";

import { GQLCOMMENT_FLAG_REPORTED_REASON } from "coral-server/graph/schema/__generated__/types";

function baseInput(
  overrides: Partial<DSAGuardReportInput> = {}
): DSAGuardReportInput {
  return {
    itemWebsite: "aha-labrador",
    comment: {
      id: "comment-uuid-1",
      storyID: "story-uuid-1",
      authorID: "user-uuid-1",
      revisions: [{ id: "rev-1", body: "<p>hello</p>" }],
    } as any,
    story: {
      id: "story-uuid-1",
      url: "https://www.aha.cz/test/article",
      metadata: { title: "Article title" },
    } as any,
    authorUsername: "alice",
    additionalDetails: "this is offensive",
    reporterName: "Karel",
    reporterEmail: "karel@example.com",
    reason: GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_OFFENSIVE,
    ...overrides,
  };
}

describe("mapReasonToDSAGuard", () => {
  it("maps visible reasons to the agreed integer codes", () => {
    expect(
      mapReasonToDSAGuard(GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_SPAM)
    ).toEqual(1);
    expect(
      mapReasonToDSAGuard(
        GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_OFFENSIVE
      )
    ).toEqual(2);
    expect(
      mapReasonToDSAGuard(
        GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_COPYRIGHT
      )
    ).toEqual(3);
    expect(
      mapReasonToDSAGuard(
        GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_OTHER
      )
    ).toEqual(1000);
  });

  it("falls back to 1000 (Other) for hidden enum values", () => {
    expect(
      mapReasonToDSAGuard(
        GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_ABUSIVE
      )
    ).toEqual(1000);
    expect(
      mapReasonToDSAGuard(GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_BIO)
    ).toEqual(1000);
  });
});

describe("buildDSAGuardReportPayload", () => {
  it("produces the agreed payload shape for a typical report", () => {
    const payload = buildDSAGuardReportPayload(baseInput());

    expect(payload).toEqual({
      token: "coral-backend",
      itemWebsite: "aha-labrador",
      itemId: "[aha-labrador_articleForumPost]_comment-uuid-1",
      itemUrl: "https://www.aha.cz/test/article#comment-comment-uuid-1",
      itemUrlBase: "https://www.aha.cz/test/article",
      itemType: "articleForumPost",
      itemAuthorName: "alice",
      itemContent: "<p>hello</p>",
      itemTitle: "Article title",
      reportReason: 2,
      reportReasonDetail: "this is offensive",
      reportReporterEmail: "karel@example.com",
      reportReporterName: "Karel",
      reportStatus: 0,
    });
  });

  it("substitutes empty strings for missing reporter and content fields", () => {
    const payload = buildDSAGuardReportPayload(
      baseInput({
        authorUsername: null,
        additionalDetails: undefined,
        reporterName: undefined,
        reporterEmail: undefined,
        comment: {
          id: "comment-uuid-2",
          storyID: "story-uuid-1",
          authorID: null,
          revisions: [],
        } as any,
        story: {
          id: "story-uuid-1",
          url: "https://www.aha.cz/empty",
          metadata: {},
        } as any,
      })
    );

    expect(payload.itemAuthorName).toEqual("");
    expect(payload.itemContent).toEqual("");
    expect(payload.itemTitle).toEqual("");
    expect(payload.reportReasonDetail).toEqual("");
    expect(payload.reportReporterEmail).toEqual("");
    expect(payload.reportReporterName).toEqual("");
  });

  it("uses the comment's latest revision body for itemContent", () => {
    const payload = buildDSAGuardReportPayload(
      baseInput({
        comment: {
          id: "comment-uuid-3",
          storyID: "story-uuid-1",
          authorID: "user-uuid-1",
          revisions: [
            { id: "rev-1", body: "<p>old</p>" },
            { id: "rev-2", body: "<p>new</p>" },
          ],
        } as any,
      })
    );

    expect(payload.itemContent).toEqual("<p>new</p>");
  });

  it("maps copyright reports to reportReason=3", () => {
    const payload = buildDSAGuardReportPayload(
      baseInput({
        reason: GQLCOMMENT_FLAG_REPORTED_REASON.COMMENT_REPORTED_COPYRIGHT,
      })
    );
    expect(payload.reportReason).toEqual(3);
  });
});
