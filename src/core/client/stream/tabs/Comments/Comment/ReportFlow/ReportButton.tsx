import { Localized } from "@fluent/react/compat";
import cn from "classnames";
import React, { FunctionComponent } from "react";
import { graphql } from "react-relay";
import Responsive from "react-responsive";

import { withFragmentContainer } from "coral-framework/lib/relay";
import CLASSES from "coral-stream/classes";
import { Flex, Icon, MatchMedia } from "coral-ui/components/v2";
import { Button } from "coral-ui/components/v3";

import { ReportButton_comment } from "coral-stream/__generated__/ReportButton_comment.graphql";

import styles from "./ReportButton.css";

interface Props {
  onClick: () => void;
  open?: boolean | null;

  comment: ReportButton_comment;
}

const ReportButton: FunctionComponent<Props> = ({ onClick, comment, open }) => {
  const isReported =
    comment.viewerActionPresence &&
    (comment.viewerActionPresence.flag ||
      comment.viewerActionPresence.dontAgree);

  if (isReported) {
    return (
      <Localized
        id="comments-reportButton-aria-reported"
        attrs={{ "aria-label": true }}
      >
        <div
          className={cn(
            CLASSES.comment.actionBar.reportedButton,
            styles.reported
          )}
          data-testid="comment-reported-button"
        >
          <Flex alignItems="center">
            <Icon size="sm" className={styles.icon}>
              flag
            </Icon>
            <MatchMedia gteWidth="mobile">
              {(matches) =>
                matches ? (
                  <Localized id="comments-reportButton-reported">
                    Reported
                  </Localized>
                ) : null
              }
            </MatchMedia>
          </Flex>
        </div>
      </Localized>
    );
  }

  return (
    <Localized
      id="comments-reportButton-aria-report"
      attrs={{ "aria-label": true }}
      vars={{ username: comment.author ? comment.author.username : "" }}
    >
      <Button
        className={cn(CLASSES.comment.actionBar.reportButton)}
        variant={open ? "filled" : "flat"}
        active={Boolean(open)}
        color="secondary"
        fontSize="small"
        fontWeight="semiBold"
        paddingSize="extraSmall"
        onClick={onClick}
        data-testid="comment-report-button"
      >
        <Flex alignItems="center" container="span">
          <Icon size="sm" className={styles.icon}>
            flag
          </Icon>
          <Responsive minWidth={400}>
            <Localized id="comments-reportButton-report">
              <span>Report</span>
            </Localized>
          </Responsive>
        </Flex>
      </Button>
    </Localized>
  );
};

const enhanced = withFragmentContainer<Props>({
  comment: graphql`
    fragment ReportButton_comment on Comment {
      id
      author {
        username
      }
      viewerActionPresence {
        dontAgree
        flag
      }
    }
  `,
})(ReportButton);

export default enhanced;
