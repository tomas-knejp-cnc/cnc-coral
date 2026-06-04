import {
  buildModeratorActionPayload,
  DSAGuardModeratorActionInput,
  isUserReported,
  mapRejectReasonToDSAGuard,
} from "coral-server/services/dsaGuard";

function baseInput(
  overrides: Partial<DSAGuardModeratorActionInput> = {}
): DSAGuardModeratorActionInput {
  return {
    itemWebsite: "aha-labrador",
    comment: {
      id: "comment-uuid-1",
      storyID: "story-uuid-1",
      authorID: "user-uuid-1",
      revisions: [{ id: "rev-1", body: "<p>hello</p>" }],
      createdAt: new Date("2026-01-02T03:04:05Z"),
    } as any,
    story: {
      id: "story-uuid-1",
      url: "https://www.aha.cz/test/article",
      metadata: { title: "Article title" },
    } as any,
    authorUsername: "alice",
    authorEmail: "alice@example.com",
    authorIp: "10.0.0.1",
    authorDateTime: new Date("2026-01-02T03:04:05Z"),
    moderatorName: "Karel Křesťan",
    moderatorEmail: "karel@example.com",
    reason: "SPAM",
    reasonDetail: "obvious advertisement",
    ...overrides,
  };
}

describe("mapRejectReasonToDSAGuard", () => {
  it("maps the 4 picker reasons to DSA Guard integers", () => {
    expect(mapRejectReasonToDSAGuard("PERSONAL_ATTACKS")).toEqual(1);
    expect(mapRejectReasonToDSAGuard("SPAM")).toEqual(2);
    expect(mapRejectReasonToDSAGuard("OFF_TOPIC")).toEqual(3);
    expect(mapRejectReasonToDSAGuard("OTHER")).toEqual(1000);
  });

  it("defaults to 1000 (Other) when no reason is provided", () => {
    expect(mapRejectReasonToDSAGuard(undefined)).toEqual(1000);
  });
});

describe("buildModeratorActionPayload", () => {
  it("produces the agreed payload shape", () => {
    const payload = buildModeratorActionPayload(baseInput());

    expect(payload).toEqual({
      items: [
        {
          id: "[aha-labrador_articleForumPost]_comment-uuid-1",
          itemWebsite: "aha-labrador",
          itemUrl: "https://www.aha.cz/test/article#comment-comment-uuid-1",
          itemUrlBase: "https://www.aha.cz/test/article",
          itemType: "articleForumPost",
          itemAuthorName: "alice",
          itemAuthorEmail: "alice@example.com",
          itemAuthorIp: "10.0.0.1",
          itemTitle: "Article title",
          itemDateTime: "2026-01-02T03:04:05.000Z",
        },
      ],
      itemContent: "<p>hello</p>",
      actionType: 1,
      reason: 2,
      reasonDetail: "obvious advertisement",
      moderatorName: "Karel Křesťan",
      moderatorEmail: "karel@example.com",
    });
  });

  it("uses empty strings for missing author/content/title fields", () => {
    const payload = buildModeratorActionPayload(
      baseInput({
        authorUsername: null,
        authorEmail: null,
        authorIp: null,
        authorDateTime: null,
        reasonDetail: undefined,
        reason: undefined,
        comment: {
          id: "comment-uuid-2",
          storyID: "story-uuid-1",
          authorID: null,
          revisions: [],
          createdAt: new Date(0),
        } as any,
        story: {
          id: "story-uuid-1",
          url: "https://www.aha.cz/empty",
          metadata: {},
        } as any,
      })
    );

    expect(payload.items[0].itemAuthorName).toEqual("");
    expect(payload.items[0].itemAuthorEmail).toEqual("");
    expect(payload.items[0].itemAuthorIp).toEqual("");
    expect(payload.items[0].itemTitle).toEqual("");
    expect(payload.itemContent).toEqual("");
    expect(payload.reasonDetail).toEqual("");
    expect(payload.reason).toEqual(1000);
  });

  it("always sends actionType=1 (Removal)", () => {
    expect(buildModeratorActionPayload(baseInput()).actionType).toEqual(1);
  });

  it("always sends items as a single-element array", () => {
    expect(buildModeratorActionPayload(baseInput()).items.length).toEqual(1);
  });
});

describe("isUserReported", () => {
  function commentWithReasons(actionCounts: Record<string, number>): any {
    return {
      revisions: [
        {
          id: "rev-1",
          body: "<p>hello</p>",
          actionCounts,
        },
      ],
    };
  }

  it("returns true when at least one COMMENT_REPORTED_* count is positive", () => {
    expect(
      isUserReported(commentWithReasons({ FLAG__COMMENT_REPORTED_SPAM: 1 }))
    ).toEqual(true);
    expect(
      isUserReported(
        commentWithReasons({ FLAG__COMMENT_REPORTED_COPYRIGHT: 2 })
      )
    ).toEqual(true);
  });

  it("returns false when there are no user-report flags", () => {
    expect(isUserReported(commentWithReasons({}))).toEqual(false);
    expect(
      isUserReported(commentWithReasons({ FLAG__COMMENT_DETECTED_TOXIC: 5 }))
    ).toEqual(false);
  });

  it("returns false when comment has no revisions", () => {
    expect(isUserReported({ revisions: [] } as any)).toEqual(false);
  });
});
