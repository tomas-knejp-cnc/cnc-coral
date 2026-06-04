import { Localized } from "@fluent/react/compat";
import React, { FunctionComponent, useCallback, useState } from "react";

import {
  Button,
  Card,
  CardCloseButton,
  Flex,
  HorizontalGutter,
  Modal,
  RadioButton,
  Textarea,
} from "coral-ui/components/v2";

import styles from "./RejectCommentReasonModal.css";

export type DSARejectReason =
  | "PERSONAL_ATTACKS"
  | "SPAM"
  | "OFF_TOPIC"
  | "OTHER";

interface Props {
  open: boolean;
  onCancel: () => void;
  onConfirm: (reason: DSARejectReason, reasonDetail: string) => void;
}

const RejectCommentReasonModal: FunctionComponent<Props> = ({
  open,
  onCancel,
  onConfirm,
}) => {
  const [reason, setReason] = useState<DSARejectReason | null>(null);
  const [reasonDetail, setReasonDetail] = useState("");

  const handleConfirm = useCallback(() => {
    if (!reason) {
      return;
    }
    onConfirm(reason, reasonDetail);
    setReason(null);
    setReasonDetail("");
  }, [onConfirm, reason, reasonDetail]);

  const handleCancel = useCallback(() => {
    onCancel();
    setReason(null);
    setReasonDetail("");
  }, [onCancel]);

  return (
    <Modal open={open} onClose={handleCancel}>
      {({ firstFocusableRef }) => (
        <Card className={styles.root}>
          <Flex justifyContent="flex-end">
            <CardCloseButton onClick={handleCancel} ref={firstFocusableRef} />
          </Flex>
          <HorizontalGutter spacing={3}>
            <Localized id="moderate-rejectReasonModal-title">
              <h2 className={styles.title}>Reject reason</h2>
            </Localized>

            <HorizontalGutter spacing={1}>
              <RadioButton
                checked={reason === "PERSONAL_ATTACKS"}
                onChange={() => setReason("PERSONAL_ATTACKS")}
                name="rejectReason"
                value="PERSONAL_ATTACKS"
              >
                <Localized id="moderate-rejectReasonModal-reasonPersonalAttacks">
                  <span>
                    Personal attacks, insults, vulgarisms, harming CNC
                  </span>
                </Localized>
              </RadioButton>
              <RadioButton
                checked={reason === "SPAM"}
                onChange={() => setReason("SPAM")}
                name="rejectReason"
                value="SPAM"
              >
                <Localized id="moderate-rejectReasonModal-reasonSpam">
                  <span>Spam or other advertising</span>
                </Localized>
              </RadioButton>
              <RadioButton
                checked={reason === "OFF_TOPIC"}
                onChange={() => setReason("OFF_TOPIC")}
                name="rejectReason"
                value="OFF_TOPIC"
              >
                <Localized id="moderate-rejectReasonModal-reasonOffTopic">
                  <span>
                    Off-topic, trolling, duplicates and other discussion-ruining
                  </span>
                </Localized>
              </RadioButton>
              <RadioButton
                checked={reason === "OTHER"}
                onChange={() => setReason("OTHER")}
                name="rejectReason"
                value="OTHER"
              >
                <Localized id="moderate-rejectReasonModal-reasonOther">
                  <span>Other legal reasons</span>
                </Localized>
              </RadioButton>
            </HorizontalGutter>

            <Localized id="moderate-rejectReasonModal-detailLabel">
              <label className={styles.heading}>
                Detailed reason (optional)
              </label>
            </Localized>
            <Textarea
              value={reasonDetail}
              onChange={(e) => setReasonDetail(e.target.value)}
              maxLength={500}
            />

            <Flex justifyContent="flex-end" itemGutter>
              <Localized id="moderate-rejectReasonModal-cancel">
                <Button variant="outlined" color="mono" onClick={handleCancel}>
                  Cancel
                </Button>
              </Localized>
              <Localized id="moderate-rejectReasonModal-confirm">
                <Button
                  color="alert"
                  onClick={handleConfirm}
                  disabled={!reason}
                >
                  Reject
                </Button>
              </Localized>
            </Flex>
          </HorizontalGutter>
        </Card>
      )}
    </Modal>
  );
};

export default RejectCommentReasonModal;
