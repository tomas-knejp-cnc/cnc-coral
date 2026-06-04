import { Localized } from "@fluent/react/compat";
import React, { FunctionComponent } from "react";

import FlagDetailsCategory from "./FlagDetailsCategory";
import FlagDetailsEntry from "./FlagDetailsEntry";

interface Props {
  category: React.ReactNode;
  nodes: ReadonlyArray<{
    flagger: { id: string; username: string | null } | null;
    additionalDetails: string | null;
    reporterForename?: string | null;
    reporterSurname?: string | null;
    reporterEmail?: string | null;
    gdprConsent?: boolean | null;
  }>;
  onUsernameClick: (id?: string) => void;
}

const FlagDetails: FunctionComponent<Props> = ({
  category,
  nodes,
  onUsernameClick,
}) => {
  if (nodes.length === 0) {
    return null;
  }

  return (
    <FlagDetailsCategory category={category}>
      {nodes.map((flag, i) => (
        <FlagDetailsEntry
          key={i}
          onClick={() =>
            flag.flagger ? onUsernameClick(flag.flagger.id) : null
          }
          user={
            flag.flagger && flag.flagger.username ? (
              flag.flagger.username
            ) : (
              <Localized id="moderate-flagDetails-anonymousReporter">
                <span>Anonymous</span>
              </Localized>
            )
          }
          identity={
            flag.reporterForename ||
            flag.reporterSurname ||
            flag.reporterEmail ||
            typeof flag.gdprConsent === "boolean" ? (
              <>
                {(flag.reporterForename || flag.reporterSurname) && (
                  <span>
                    {[flag.reporterForename, flag.reporterSurname]
                      .filter(Boolean)
                      .join(" ")}
                  </span>
                )}
                {flag.reporterEmail && <span>{flag.reporterEmail}</span>}
                {typeof flag.gdprConsent === "boolean" && (
                  <span>GDPR: {flag.gdprConsent ? "yes" : "no"}</span>
                )}
              </>
            ) : undefined
          }
          details={flag.additionalDetails}
        />
      ))}
    </FlagDetailsCategory>
  );
};

export default FlagDetails;
