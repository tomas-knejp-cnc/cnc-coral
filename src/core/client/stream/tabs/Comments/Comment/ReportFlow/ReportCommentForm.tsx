import { Localized } from "@fluent/react/compat";
import cn from "classnames";
import { get } from "lodash";
import React, { FunctionComponent } from "react";
import { Field, FieldProps, Form } from "react-final-form";

import { OnSubmit } from "coral-framework/lib/form";
import {
  customMessage,
  createValidator,
  composeValidators,
  required,
  validateEmail,
  validateMaxLength,
} from "coral-framework/lib/validation";
import CLASSES from "coral-stream/classes";
import { Flex, RadioButton } from "coral-ui/components/v2";
import { Button, ValidationMessage } from "coral-ui/components/v3";

import styles from "./ReportCommentForm.css";

const RadioField: FunctionComponent<
  Pick<
    FieldProps<string, any>,
    "validate" | "name" | "value" | "disabled" | "children"
  >
> = ({ name, value, disabled, children }) => (
  <Field name={name} type="radio" value={value}>
    {({ input }: { input: any }) => (
      <RadioButton
        {...input}
        id={`reportComment-popover--${input.name}-${value}`}
        disabled={disabled}
        value={value}
      >
        {children}
      </RadioButton>
    )}
  </Field>
);

interface Props {
  id: string;
  onCancel: () => void;
  onSubmit: OnSubmit<any>;
  biosEnabled: boolean;
}

const requiredChecked = createValidator(
  (v) => v === true,
  <Localized id="comments-reportPopover-gdprRequired">
    <span>Required</span>
  </Localized>
);

export interface FormProps {
  reason:
    | "COMMENT_REPORTED_OFFENSIVE"
    | "COMMENT_REPORTED_SPAM"
    | "COMMENT_REPORTED_OTHER"
    | "DISAGREE";
  reporterForename?: string;
  reporterSurname?: string;
  reporterEmail?: string;
  gdprConsent?: boolean;
  additionalDetails?: string;
}

class ReportCommentForm extends React.Component<Props> {
  public render() {
    const { onCancel, onSubmit, id } = this.props;
    return (
      <div
        className={cn(styles.root, CLASSES.reportPopover.$root)}
        data-testid="report-comment-form"
        role="none"
      >
        <Form onSubmit={onSubmit}>
          {({
            handleSubmit,
            submitting,
            hasValidationErrors,
            form,
            submitError,
          }) => (
            <form
              autoComplete="off"
              onSubmit={handleSubmit}
              className={styles.root}
              id="report-comments-form"
            >
              <div>
                <Localized id="comments-reportPopover-reportThisComment">
                  <div className={styles.title}>Report This Comment</div>
                </Localized>
                <Localized id="comments-reportPopover-whyAreYouReporting">
                  <div className={styles.heading}>
                    Why are you reporting this comment?
                  </div>
                </Localized>
                <ul className={styles.list}>
                  <li>
                    <Localized id="comments-reportPopover-reasonOffensive">
                      <RadioField
                        name="reason"
                        value="COMMENT_REPORTED_OFFENSIVE"
                        disabled={submitting}
                      >
                        This comment is offensive
                      </RadioField>
                    </Localized>
                  </li>
                  <li>
                    <Localized id="comments-reportPopover-reasonAbusive">
                      <RadioField
                        name="reason"
                        value="COMMENT_REPORTED_ABUSIVE"
                        disabled={submitting}
                      >
                        This commenter is being abusive
                      </RadioField>
                    </Localized>
                  </li>
                  <li>
                    <Localized id="comments-reportPopover-reasonIDisagree">
                      <RadioField
                        name="reason"
                        value="DISAGREE"
                        disabled={submitting}
                      >
                        I disagree with this comment
                      </RadioField>
                    </Localized>
                  </li>
                  <li>
                    <Localized id="comments-reportPopover-reasonSpam">
                      <RadioField
                        name="reason"
                        value="COMMENT_REPORTED_SPAM"
                        disabled={submitting}
                      >
                        This looks like an ad or marketing
                      </RadioField>
                    </Localized>
                  </li>
                  {this.props.biosEnabled && (
                    <li>
                      <Localized id="comments-reportPopover-reasonBio">
                        <RadioField
                          name="reason"
                          value="COMMENT_REPORTED_BIO"
                          disabled={submitting}
                        >
                          This commenter's bio is offensive or abusive
                        </RadioField>
                      </Localized>
                    </li>
                  )}
                  <li>
                    <Localized id="comments-reportPopover-reasonOther">
                      <RadioField
                        name="reason"
                        value="COMMENT_REPORTED_OTHER"
                        disabled={submitting}
                      >
                        Other
                      </RadioField>
                    </Localized>
                  </li>
                </ul>

                <Localized id="comments-reportPopover-reporterName">
                  <div className={styles.heading}>Forename (Optional)</div>
                </Localized>
                <div>
                  <Field name="reporterForename">
                    {({ input }) => (
                      <input
                        {...input}
                        type="text"
                        className={styles.input}
                        disabled={submitting}
                        data-testid="report-comment-reporter-forename"
                      />
                    )}
                  </Field>
                </div>

                <Localized id="comments-reportPopover-reporterSurname">
                  <div className={styles.heading}>Surname (Optional)</div>
                </Localized>
                <div>
                  <Field name="reporterSurname">
                    {({ input }) => (
                      <input
                        {...input}
                        type="text"
                        className={styles.input}
                        disabled={submitting}
                        data-testid="report-comment-reporter-surname"
                      />
                    )}
                  </Field>
                </div>

                <Localized id="comments-reportPopover-reporterEmail">
                  <div className={styles.heading}>Email (Optional)</div>
                </Localized>
                <Localized id="comments-reportPopover-reporterEmailHint">
                  <div className={styles.detail}>
                    Needed to notify you about the decision.
                  </div>
                </Localized>
                <div>
                  <Field
                    name="reporterEmail"
                    validate={composeEmailValidator()}
                  >
                    {({ input, meta }) => (
                      <>
                        <input
                          {...input}
                          type="email"
                          className={styles.input}
                          disabled={submitting}
                          data-testid="report-comment-reporter-email"
                        />
                        {meta.error && meta.touched && (
                          <ValidationMessage meta={meta} />
                        )}
                      </>
                    )}
                  </Field>
                </div>

                <Localized
                  id="comments-reportPopover-additionalInformation"
                  elems={{ optional: <span className={styles.detail} /> }}
                >
                  <label
                    className={styles.heading}
                    htmlFor={`comments-reportCommentForm-additionalDetails--${id}`}
                  >
                    Report text (Required)
                  </label>
                </Localized>
                <Localized id="comments-reportPopover-pleaseLeaveAdditionalInformation">
                  <div className={styles.detail}>
                    Please leave any additional information that may be helpful
                    to our moderators.
                  </div>
                </Localized>
                <div>
                  <Field
                    name="additionalDetails"
                    validate={composeReportTextValidator()}
                  >
                    {({ input, meta }) => (
                      <div className={styles.textAreaContainer}>
                        <textarea
                          {...input}
                          data-testid="report-comment-additional-information"
                          id={`comments-reportCommentForm-additionalDetails--${id}`}
                          className={styles.textarea}
                          disabled={submitting}
                        />
                        <div className={styles.textareaInfo}>
                          {(meta.error && (
                            <ValidationMessage
                              meta={meta}
                              justifyContent="flex-end"
                            />
                          )) || (
                            <Localized
                              id="comments-reportPopover-maxCharacters"
                              vars={{ maxCharacters: 500 }}
                            >
                              <div>Max. 500 Characters</div>
                            </Localized>
                          )}
                        </div>
                      </div>
                    )}
                  </Field>
                </div>

                <div className={styles.gdpr}>
                  <Field
                    name="gdprConsent"
                    type="checkbox"
                    validate={requiredChecked}
                  >
                    {({ input, meta }) => (
                      <>
                        <label className={styles.gdprLabel}>
                          <input
                            {...input}
                            type="checkbox"
                            disabled={submitting}
                            data-testid="report-comment-gdpr-consent"
                          />
                          <Localized id="comments-reportPopover-gdprConsent">
                            <span>
                              I have read the information about processing
                              personal data.
                            </span>
                          </Localized>
                        </label>
                        {meta.error && meta.touched && (
                          <ValidationMessage meta={meta} />
                        )}
                      </>
                    )}
                  </Field>
                </div>

                {submitError && (
                  <ValidationMessage>{submitError}</ValidationMessage>
                )}
                <Flex alignItems="center" justifyContent="flex-end">
                  <Localized id="comments-reportPopover-cancel">
                    <Button
                      className={cn(
                        CLASSES.reportPopover.cancelButton,
                        styles.cancel
                      )}
                      color="secondary"
                      variant="outlined"
                      fontSize="small"
                      paddingSize="small"
                      onClick={onCancel}
                      disabled={submitting}
                      upperCase
                    >
                      Cancel
                    </Button>
                  </Localized>
                  <Localized id="comments-reportPopover-submit">
                    <Button
                      className={CLASSES.reportPopover.submitButton}
                      color="secondary"
                      variant="filled"
                      fontSize="small"
                      paddingSize="small"
                      type="submit"
                      disabled={
                        !get(form.getFieldState("reason"), "value") ||
                        !get(
                          form.getFieldState("additionalDetails"),
                          "value"
                        ) ||
                        !get(form.getFieldState("gdprConsent"), "value") ||
                        submitting ||
                        hasValidationErrors
                      }
                      upperCase
                    >
                      Submit
                    </Button>
                  </Localized>
                </Flex>
              </div>
            </form>
          )}
        </Form>
      </div>
    );
  }
}

function composeEmailValidator() {
  return customMessage(
    validateEmail,
    <Localized id="comments-reportPopover-invalidEmail">
      <span>Invalid email</span>
    </Localized>
  );
}

function composeReportTextValidator() {
  return composeValidators(
    required,
    customMessage(
      validateMaxLength(500),
      <Localized
        id="comments-reportPopover-restrictToMaxCharacters"
        vars={{ maxCharacters: 500 }}
      >
        <span>Please restrict your report to 500 characters</span>
      </Localized>
    )
  );
}

export default ReportCommentForm;
