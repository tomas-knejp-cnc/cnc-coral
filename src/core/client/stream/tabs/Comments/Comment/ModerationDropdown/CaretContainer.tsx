import { Localized } from "@fluent/react/compat";
import cn from "classnames";
import React, {
  FunctionComponent,
  useCallback,
  useMemo,
  useState,
} from "react";
import { graphql } from "react-relay";

import RejectCommentReasonModal, {
  DSARejectReason,
} from "coral-framework/components/RejectCommentReasonModal";
import { useMutation, withFragmentContainer } from "coral-framework/lib/relay";
import CLASSES from "coral-stream/classes";
import {
  BaseButton,
  ClickOutside,
  Icon,
  Popover,
} from "coral-ui/components/v2";

import { CaretContainer_comment } from "coral-stream/__generated__/CaretContainer_comment.graphql";
import { CaretContainer_settings } from "coral-stream/__generated__/CaretContainer_settings.graphql";
import { CaretContainer_story } from "coral-stream/__generated__/CaretContainer_story.graphql";
import { CaretContainer_viewer } from "coral-stream/__generated__/CaretContainer_viewer.graphql";

import ModerationDropdownContainer from "./ModerationDropdownContainer";
import RejectCommentMutation from "./RejectCommentMutation";

import styles from "./CaretContainer.css";

interface Props {
  comment: CaretContainer_comment;
  story: CaretContainer_story;
  viewer: CaretContainer_viewer;
  settings: CaretContainer_settings;
}

const CaretContainer: FunctionComponent<Props> = (props) => {
  const popoverID = `comments-moderationMenu-${props.comment.id}`;
  const reject = useMutation(RejectCommentMutation);
  const [showRejectModal, setShowRejectModal] = useState(false);

  const userReportedFlagCount = useMemo(() => {
    const reasons = props.comment.revision?.actionCounts?.flag?.reasons;
    if (!reasons) {
      return 0;
    }
    return (
      reasons.COMMENT_REPORTED_OFFENSIVE +
      reasons.COMMENT_REPORTED_ABUSIVE +
      reasons.COMMENT_REPORTED_SPAM +
      reasons.COMMENT_REPORTED_BIO +
      reasons.COMMENT_REPORTED_COPYRIGHT +
      reasons.COMMENT_REPORTED_OTHER
    );
  }, [props.comment.revision]);
  const isUserReported = userReportedFlagCount > 0;

  const performReject = useCallback(
    async (dsaReason?: DSARejectReason, dsaReasonDetail?: string) => {
      if (!props.comment.revision || !props.comment.story) {
        return;
      }
      await reject({
        commentID: props.comment.id,
        commentRevisionID: props.comment.revision.id,
        storyID: props.comment.story.id,
        dsaReason,
        dsaReasonDetail,
      });
    },
    [reject, props.comment]
  );

  const handleRejectFromDropdown = useCallback(
    async (closeDropdown: () => void) => {
      closeDropdown();
      if (isUserReported) {
        setShowRejectModal(true);
      } else {
        await performReject();
      }
    },
    [isUserReported, performReject]
  );

  const handleConfirmReject = useCallback(
    async (dsaReason: DSARejectReason, dsaReasonDetail: string) => {
      setShowRejectModal(false);
      await performReject(dsaReason, dsaReasonDetail);
    },
    [performReject]
  );

  const handleCancelReject = useCallback(() => {
    setShowRejectModal(false);
  }, []);

  return (
    <>
      <Localized
        id="comments-moderationDropdown-popover"
        attrs={{ description: true }}
      >
        <Popover
          id={popoverID}
          placement="bottom-end"
          description="A popover menu to moderate the comment"
          body={({ toggleVisibility, scheduleUpdate }) => (
            <ClickOutside onClickOutside={toggleVisibility}>
              <ModerationDropdownContainer
                comment={props.comment}
                story={props.story}
                viewer={props.viewer}
                settings={props.settings}
                onDismiss={toggleVisibility}
                scheduleUpdate={scheduleUpdate}
                onReject={() => handleRejectFromDropdown(toggleVisibility)}
              />
            </ClickOutside>
          )}
        >
          {({ toggleVisibility, visible, ref }) => (
            <Localized
              id="comments-moderationDropdown-caretButton"
              attrs={{ "aria-label": true }}
            >
              <BaseButton
                className={cn(
                  styles.root,
                  CLASSES.comment.topBar.caretButton,
                  visible ? [styles.active] : []
                )}
                onClick={toggleVisibility}
                aria-controls={popoverID}
                ref={ref}
                aria-label="Moderate"
              >
                <Icon>{visible ? "expand_less" : "expand_more"}</Icon>
              </BaseButton>
            </Localized>
          )}
        </Popover>
      </Localized>
      <RejectCommentReasonModal
        open={showRejectModal}
        onCancel={handleCancelReject}
        onConfirm={handleConfirmReject}
      />
    </>
  );
};

const enhanced = withFragmentContainer<Props>({
  comment: graphql`
    fragment CaretContainer_comment on Comment {
      id
      revision {
        id
        actionCounts {
          flag {
            reasons {
              COMMENT_REPORTED_OFFENSIVE
              COMMENT_REPORTED_ABUSIVE
              COMMENT_REPORTED_SPAM
              COMMENT_REPORTED_BIO
              COMMENT_REPORTED_COPYRIGHT
              COMMENT_REPORTED_OTHER
            }
          }
        }
      }
      story {
        id
      }
      ...ModerationDropdownContainer_comment
    }
  `,
  story: graphql`
    fragment CaretContainer_story on Story {
      ...ModerationDropdownContainer_story
    }
  `,
  settings: graphql`
    fragment CaretContainer_settings on Settings {
      ...ModerationDropdownContainer_settings
    }
  `,
  viewer: graphql`
    fragment CaretContainer_viewer on User {
      ...ModerationDropdownContainer_viewer
    }
  `,
})(CaretContainer);

export default enhanced;
