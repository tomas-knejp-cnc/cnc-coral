# Account Notifications

email-footer-accountNotification =
  Odesláno organizací <a data-l10n-name="organizationLink">{ $organizationName }</a>

email-subject-accountNotificationForgotPassword = Žádost o obnovení hesla
email-template-accountNotificationForgotPassword =
  Dobrý den { $username },<br/><br/>
  Obdrželi jsme žádost o obnovení vašeho hesla na webu <a data-l10n-name="organizationName">{ $organizationName }</a>.<br/><br/>
  Pro obnovení hesla klikněte na tento odkaz: <a data-l10n-name="resetYourPassword">Klikněte zde pro obnovení hesla</a><br/><br/>
  <i>Pokud jste o toto nežádali, můžete tento e-mail ignorovat.</i><br/>

email-subject-accountNotificationBan = Váš účet byl zablokován
email-template-accountNotificationBan =
  { $customMessage }<br /><br />
  Pokud si myslíte, že se jedná o omyl, kontaktujte prosím náš komunitní tým
  na adrese <a data-l10n-name="organizationContactEmail" >{ $organizationContactEmail }</a>.

email-subject-accountNotificationPasswordChange = Vaše heslo bylo změněno
email-template-accountNotificationPasswordChange =
  Dobrý den { $username },<br/><br/>
  Heslo k vašemu účtu bylo změněno.<br/><br/>
  Pokud jste tuto změnu nepožadovali,
  kontaktujte prosím náš komunitní tým na adrese <a data-l10n-name="organizationContactEmail" >{ $organizationContactEmail }</a>.

email-subject-accountNotificationUpdateUsername = Vaše uživatelské jméno bylo změněno
email-template-accountNotificationUpdateUsername =
  Dobrý den { $username },<br/><br/>
  Děkujeme za aktualizaci informací vašeho komentářového účtu na { $organizationName }. Provedené změny jsou účinné okamžitě. <br /><br />
  Pokud jste tuto změnu neprovedli, kontaktujte prosím náš komunitní tým na adrese <a data-l10n-name="organizationContactEmail" >{ $organizationContactEmail }</a>.

email-subject-accountNotificationSuspend = Váš účet byl pozastaven
email-template-accountNotificationSuspend =
  { $customMessage }<br/><br/>
  Pokud si myslíte, že se jedná o omyl, kontaktujte prosím náš komunitní tým
  na adrese <a data-l10n-name="organizationContactEmail" >{ $organizationContactEmail }</a>.

email-subject-accountNotificationConfirmEmail = Potvrzení e-mailu
email-template-accountNotificationConfirmEmail =
  Dobrý den { $username },<br/><br/>
  Pro potvrzení vaší e-mailové adresy pro použití s vaším komentářovým účtem na { $organizationName },
  klikněte prosím na tento odkaz: <a data-l10n-name="confirmYourEmail">Klikněte zde pro potvrzení e-mailu</a><br/><br/>
  Pokud jste si nedávno nevytvářeli komentářový účet
  na { $organizationName }, můžete tento e-mail bezpečně ignorovat.

email-subject-accountNotificationInvite = Pozvánka do týmu Coral
email-template-accountNotificationInvite =
  Byli jste pozváni do týmu { $organizationName } na platformě Coral. Dokončete
  nastavení svého účtu <a data-l10n-name="invite">zde</a>.

email-subject-accountNotificationDownloadComments = Vaše komentáře jsou připraveny ke stažení
email-template-accountNotificationDownloadComments =
  Vaše komentáře z { $organizationName } k datu { $date } jsou nyní k dispozici ke stažení.<br /><br />
  <a data-l10n-name="downloadUrl">Stáhnout archiv mých komentářů</a>

email-subject-accountNotificationDeleteRequestConfirmation =
  Váš komentářový účet je naplánován ke smazání
email-template-accountNotificationDeleteRequestConfirmation =
  Obdrželi jsme žádost o smazání vašeho komentářového účtu.
  Váš účet je naplánován ke smazání dne { $requestDate }.<br /><br />
  Po tomto datu budou všechny vaše komentáře odstraněny z webu,
  všechny vaše komentáře budou odstraněny z naší databáze a vaše
  uživatelské jméno a e-mailová adresa budou odstraněny z našeho systému.<br /><br />
  Pokud si to rozmyslíte, můžete se přihlásit ke svému účtu a zrušit
  žádost před plánovaným termínem smazání účtu.

email-subject-accountNotificationDeleteRequestCancel =
  Vaše žádost o smazání účtu byla zrušena
email-template-accountNotificationDeleteRequestCancel =
  Zrušili jste svou žádost o smazání účtu na { $organizationName }.
  Váš účet je nyní znovu aktivní.

email-subject-accountNotificationDeleteRequestCompleted =
  Váš účet byl smazán
email-template-accountNotificationDeleteRequestCompleted =
  Váš komentářový účet na { $organizationName } byl nyní smazán. Mrzí nás,
  že odcházíte!<br /><br />
  Pokud se budete chtít v budoucnu znovu zapojit do diskuze, můžete si zaregistrovat
  nový účet.<br /><br />
  Pokud nám chcete sdělit, proč jste odešli a co můžeme udělat pro zlepšení
  komentářového systému, napište nám prosím na
  { $organizationContactEmail }.

# Notification

email-footer-notification =
  Odesláno organizací <a data-l10n-name="organizationLink">{ $organizationName }</a> - <a data-l10n-name="unsubscribeLink">Odhlásit se z těchto oznámení</a>

## On Reply

email-subject-notificationOnReply = Někdo odpověděl na váš komentář na { $organizationName }
email-template-notificationOnReply =
  { $authorUsername } odpověděl/a na <a data-l10n-name="commentPermalink">komentář</a>, který jste napsali na <a data-l10n-name="storyLink">{ $storyTitle }</a>

## On Featured

email-subject-notificationOnFeatured = Jeden z vašich komentářů byl vybrán na { $organizationName }
email-template-notificationOnFeatured =
  Člen našeho týmu vybral <a data-l10n-name="commentPermalink">komentář</a>, který jste napsali na <a data-l10n-name="storyLink">{ $storyTitle }</a>

## On Staff Reply

email-subject-notificationOnStaffReply = Někdo z { $organizationName } odpověděl na váš komentář
email-template-notificationOnStaffReply =
  { $authorUsername } z { $organizationName } odpověděl/a na <a data-l10n-name="commentPermalink">komentář</a>, který jste napsali na <a data-l10n-name="storyLink">{ $storyTitle }</a>

## On Comment Approved

email-subject-notificationOnCommentApproved = Váš komentář na { $organizationName } byl publikován
email-template-notificationOnCommentApproved =
  { $organizationName }<br /><br/>
  Děkujeme za odeslání komentáře. Váš komentář byl nyní publikován: <a data-l10n-name="commentPermalink">Zobrazit komentář</a>

## On Comment Rejected

email-subject-notificationOnCommentRejected = Váš komentář na { $organizationName } nebyl publikován
email-template-notificationOnCommentRejected =
  { $organizationName }<br /><br/>
  Jazyk použitý v jednom z vašich komentářů neodpovídal našim pravidlům komunity, a proto byl komentář odstraněn.

# Notification Digest

email-subject-notificationDigest = Vaše nejnovější aktivita v komentářích na { $organizationName }

email-subject-testSmtpTest = Testovací e-mail z platformy Coral
email-template-testSmtpTest = Toto je testovací e-mail odeslaný na adresu { $email }
