import React, { FunctionComponent, useCallback } from "react";
import { graphql } from "react-relay";

import { withFragmentContainer } from "coral-framework/lib/relay";

import { ReportFlowContainer_comment } from "coral-stream/__generated__/ReportFlowContainer_comment.graphql";
import { ReportFlowContainer_settings } from "coral-stream/__generated__/ReportFlowContainer_settings.graphql";

import ReportCommentFormContainer from "./ReportCommentFormContainer";

interface Props {
  comment: ReportFlowContainer_comment;
  settings: ReportFlowContainer_settings;
  onClose: () => void;
}

const ReportFlowContainer: FunctionComponent<Props> = ({
  comment,
  onClose,
  settings,
}) => {
  const onFormClose = useCallback(() => {
    onClose();
  }, [onClose]);

  return (
    <ReportCommentFormContainer
      comment={comment}
      onClose={onFormClose}
      settings={settings}
    />
  );
};

const enhanced = withFragmentContainer<Props>({
  settings: graphql`
    fragment ReportFlowContainer_settings on Settings {
      ...ReportCommentFormContainer_settings
    }
  `,
  comment: graphql`
    fragment ReportFlowContainer_comment on Comment {
      ...ReportCommentFormContainer_comment
      id
      viewerActionPresence {
        dontAgree
        flag
      }
    }
  `,
})(ReportFlowContainer);

export default enhanced;
