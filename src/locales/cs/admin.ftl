### Lokalizace pro administraci

## Obecné
general-notAvailable = Nedostupné
general-none = Žádné
general-noTextContent = Žádný textový obsah
general-archived = Archivováno

## Stav příběhu
storyStatus-open = Otevřený
storyStatus-closed = Uzavřený
storyStatus-archiving = Archivace
storyStatus-archived = Archivováno
storyStatus-unarchiving = Dearchivace

## Role
role-admin = Administrátor
role-moderator = Moderátor
role-siteModerator = Moderátor webu
role-organizationModerator = Moderátor organizace
role-staff = Redakce
role-member = Člen
role-commenter = Komentátor

role-plural-admin = Administrátoři
role-plural-moderator = Moderátoři
role-plural-staff = Redakce
role-plural-member = Členové
role-plural-commenter = Komentátoři

comments-react =
  .aria-label = {$count ->
    [0] {$reaction} komentář od {$username}
    *[other] {$reaction} ({$count}) komentář od {$username}
  }
comments-reacted =
  .aria-label = {$count ->
    [0] {$reaction} komentář od {$username}
    [one] {$reaction} komentář od {$username}
    *[other] {$reaction} ({$count}) komentář od {$username}
  }

## Stavy uživatelů
userStatus-active = Aktivní
userStatus-banned = Zablokován
userStatus-siteBanned = Zablokován na webu
userStatus-banned-all = Zablokován (vše)
userStatus-banned-count = Zablokován ({$count})
userStatus-suspended = Pozastaven
userStatus-premod = Vždy předmoderovat
userStatus-warned = Varován

# Řazení fronty
queue-sortMenu-newest = Nejnovější
queue-sortMenu-oldest = Nejstarší

## Navigace
navigation-moderate = Moderování
navigation-community = Komunita
navigation-stories = Příběhy
navigation-configure = Nastavení
navigation-dashboard = Přehled

## Uživatelské menu
userMenu-signOut = Odhlásit se
userMenu-viewLatestRelease = Zobrazit nejnovější verzi
userMenu-reportBug = Nahlásit chybu nebo poskytnout zpětnou vazbu
userMenu-popover =
  .description = Dialog uživatelského menu se souvisejícími odkazy a akcemi

## Omezený přístup
restricted-currentlySignedInTo = Aktuálně přihlášen/a k
restricted-noPermissionInfo = Nemáte oprávnění k přístupu na tuto stránku.
restricted-signedInAs = Jste přihlášen/a jako: <strong>{ $username }</strong>
restricted-signInWithADifferentAccount = Přihlásit se jiným účtem
restricted-contactAdmin = Pokud si myslíte, že jde o chybu, kontaktujte prosím svého administrátora.

## Přihlášení

# Přihlášení
login-signInTo = Přihlásit se k
login-signIn-enterAccountDetailsBelow = Zadejte údaje svého účtu níže

login-emailAddressLabel = E-mailová adresa
login-emailAddressTextField =
  .placeholder = E-mailová adresa

login-signIn-passwordLabel = Heslo
login-signIn-passwordTextField =
  .placeholder = Heslo

login-signIn-signInWithEmail = Přihlásit se e-mailem
login-orSeparator = Nebo
login-signIn-forgot-password = Zapomněli jste heslo?

login-signInWithFacebook = Přihlásit se přes Facebook
login-signInWithGoogle = Přihlásit se přes Google
login-signInWithOIDC = Přihlásit se přes { $name }

# Vytvoření uživatelského jména

createUsername-createUsernameHeader = Vytvořit uživatelské jméno
createUsername-whatItIs =
  Vaše uživatelské jméno je identifikátor, který se zobrazí u všech vašich komentářů.
createUsername-createUsernameButton = Vytvořit uživatelské jméno
createUsername-usernameLabel = Uživatelské jméno
createUsername-usernameDescription = Můžete použít "_" a ".". Mezery nejsou povoleny.
createUsername-usernameTextField =
  .placeholder = Uživatelské jméno

# Přidání e-mailové adresy
addEmailAddress-addEmailAddressHeader = Přidat e-mailovou adresu

addEmailAddress-emailAddressLabel = E-mailová adresa
addEmailAddress-emailAddressTextField =
  .placeholder = E-mailová adresa

addEmailAddress-confirmEmailAddressLabel = Potvrďte e-mailovou adresu
addEmailAddress-confirmEmailAddressTextField =
  .placeholder = Potvrďte e-mailovou adresu

addEmailAddress-whatItIs =
  Pro vaši zvýšenou bezpečnost vyžadujeme, aby uživatelé ke svým účtům přidali e-mailovou adresu.

addEmailAddress-addEmailAddressButton =
  Přidat e-mailovou adresu

# Vytvoření hesla
createPassword-createPasswordHeader = Vytvořit heslo
createPassword-whatItIs =
  Abychom ochránili váš účet před neoprávněnými změnami,
  vyžadujeme, aby uživatelé vytvořili heslo.
createPassword-createPasswordButton =
  Vytvořit heslo

createPassword-passwordLabel = Heslo
createPassword-passwordDescription = Musí mít alespoň {$minLength} znaků
createPassword-passwordTextField =
  .placeholder = Heslo

# Zapomenuté heslo
forgotPassword-forgotPasswordHeader = Zapomněli jste heslo?
forgotPassword-checkEmailHeader = Zkontrolujte svůj e-mail
forgotPassword-gotBackToSignIn = Zpět na přihlašovací stránku
forgotPassword-checkEmail-receiveEmail =
  Pokud existuje účet spojený s <strong>{ $email }</strong>,
  obdržíte e-mail s odkazem pro vytvoření nového hesla.
forgotPassword-enterEmailAndGetALink =
  Zadejte svou e-mailovou adresu níže a my vám zašleme odkaz
  pro obnovení hesla.
forgotPassword-emailAddressLabel = E-mailová adresa
forgotPassword-emailAddressTextField =
  .placeholder = E-mailová adresa
forgotPassword-sendEmailButton = Odeslat e-mail

# Propojení účtu
linkAccount-linkAccountHeader = Propojení účtu
linkAccount-alreadyAssociated =
  E-mail <strong>{ $email }</strong> je
  již přiřazen k existujícímu účtu. Pokud je chcete
  propojit, zadejte své heslo.
linkAccount-passwordLabel = Heslo
linkAccount-passwordTextField =
  .label = Heslo
linkAccount-linkAccountButton = Propojit účet
linkAccount-useDifferentEmail = Použít jinou e-mailovou adresu

## Nastavení

configure-experimentalFeature = Experimentální funkce

configure-unsavedInputWarning =
  Máte neuložené změny. Opravdu chcete pokračovat?

configure-sideBarNavigation-general = Obecné
configure-sideBarNavigation-authentication = Ověřování
configure-sideBarNavigation-moderation = Moderování
configure-sideBarNavigation-moderation-comments = Komentáře
configure-sideBarNavigation-moderation-users = Uživatelé
configure-sideBarNavigation-organization = Organizace
configure-sideBarNavigation-moderationPhases = Fáze moderování
configure-sideBarNavigation-advanced = Pokročilé
configure-sideBarNavigation-email = E-mail
configure-sideBarNavigation-bannedAndSuspectWords = Zakázaná a podezřelá slova
configure-sideBarNavigation-slack = Slack
configure-sideBarNavigation-webhooks = Webhooks

configure-sideBar-saveChanges = Uložit změny
configure-configurationSubHeader = Konfigurace
configure-onOffField-on = Zapnuto
configure-onOffField-off = Vypnuto
configure-radioButton-allow = Povolit
configure-radioButton-dontAllow = Nepovolit

### Fáze moderování

configure-moderationPhases-generatedAt = KLÍČ VYGENEROVÁN:
  { DATETIME($date, year: "numeric", month: "numeric", day: "numeric", hour: "numeric", minute: "numeric") }
configure-moderationPhases-phaseNotFound = Externí fáze moderování nebyla nalezena
configure-moderationPhases-experimentalFeature =
  Funkce vlastních fází moderování je v současné době v aktivním vývoji.
  Prosím <ContactUsLink>kontaktujte nás s jakoukoliv zpětnou vazbou nebo požadavky</ContactUsLink>.
configure-moderationPhases-header-title = Fáze moderování
configure-moderationPhases-description =
  Nakonfigurujte externí fázi moderování pro automatizaci některých moderátorských
  akcí. Požadavky na moderování budou zakódovány ve formátu JSON a podepsány. Více
  informací o požadavcích na moderování najdete v naší <externalLink>dokumentaci</externalLink>.
configure-moderationPhases-addExternalModerationPhaseButton =
  Přidat externí fázi moderování
configure-moderationPhases-moderationPhases = Fáze moderování
configure-moderationPhases-name = Název
configure-moderationPhases-status = Stav
configure-moderationPhases-noExternalModerationPhases =
  Nejsou nakonfigurovány žádné externí fáze moderování, přidejte jednu výše.
configure-moderationPhases-enabledModerationPhase = Povoleno
configure-moderationPhases-disableModerationPhase = Zakázáno
configure-moderationPhases-detailsButton = Podrobnosti <icon>keyboard_arrow_right</icon>
configure-moderationPhases-addExternalModerationPhase = Přidat externí fázi moderování
configure-moderationPhases-updateExternalModerationPhaseButton = Aktualizovat podrobnosti
configure-moderationPhases-cancelButton = Zrušit
configure-moderationPhases-format = Formát těla komentáře
configure-moderationPhases-endpointURL = URL zpětného volání
configure-moderationPhases-timeout = Časový limit
configure-moderationPhases-timeout-details =
  Doba, po kterou bude Coral čekat na vaši odpověď moderování v milisekundách.
configure-moderationPhases-format-details =
  Formát, ve kterém Coral odešle tělo komentáře. Ve výchozím nastavení Coral
  odesílá komentář v původním HTML kódovaném formátu. Pokud je vybrán "Prostý text",
  bude místo toho odeslána verze bez HTML.
configure-moderationPhases-format-html = HTML
configure-moderationPhases-format-plain = Prostý text
configure-moderationPhases-endpointURL-details =
  URL, na kterou budou odesílány požadavky na moderování Coral metodou POST. Zadaná URL
  musí odpovědět v rámci stanoveného časového limitu, jinak bude rozhodnutí moderátorské
  akce přeskočeno.
configure-moderationPhases-configureExternalModerationPhase =
  Konfigurovat externí fázi moderování
configure-moderationPhases-phaseDetails = Podrobnosti fáze
onfigure-moderationPhases-status = Stav
configure-moderationPhases-signingSecret = Podpisový klíč
configure-moderationPhases-signingSecretDescription =
  Následující podpisový klíč se používá k podepisování datových částí požadavků
  odesílaných na URL. Více informací o podepisování webhooků najdete v naší <externalLink>dokumentaci</externalLink>.
configure-moderationPhases-phaseStatus = Stav fáze
configure-moderationPhases-status = Stav
configure-moderationPhases-signingSecret = Podpisový klíč
configure-moderationPhases-signingSecretDescription =
  Následující podpisový klíč se používá k podepisování datových částí požadavků odesílaných na URL.
  Více informací o podepisování webhooků najdete v naší <externalLink>dokumentaci</externalLink>.
configure-moderationPhases-dangerZone = Nebezpečná zóna
configure-moderationPhases-rotateSigningSecret = Rotovat podpisový klíč
configure-moderationPhases-rotateSigningSecretDescription =
  Rotace podpisového klíče vám umožní bezpečně nahradit podpisový
  klíč používaný v produkci se zpožděním.
configure-moderationPhases-rotateSigningSecretButton = Rotovat podpisový klíč

configure-moderationPhases-disableExternalModerationPhase =
  Zakázat externí fázi moderování
configure-moderationPhases-disableExternalModerationPhaseDescription =
  Tato externí fáze moderování je aktuálně povolena. Jejím zakázáním nebudou
  na zadanou URL odesílány žádné nové požadavky na moderování.
configure-moderationPhases-disableExternalModerationPhaseButton = Zakázat fázi
configure-moderationPhases-enableExternalModerationPhase =
  Povolit externí fázi moderování
configure-moderationPhases-enableExternalModerationPhaseDescription =
  Tato externí fáze moderování je aktuálně zakázána. Jejím povolením budou
  na zadanou URL odesílány nové požadavky na moderování.
configure-moderationPhases-enableExternalModerationPhaseButton = Povolit fázi
configure-moderationPhases-deleteExternalModerationPhase =
  Smazat externí fázi moderování
configure-moderationPhases-deleteExternalModerationPhaseDescription =
  Smazáním této externí fáze moderování se zastaví odesílání nových požadavků
  na moderování na tuto URL a odeberou se všechna přidružená nastavení.
configure-moderationPhases-deleteExternalModerationPhaseButton = Smazat fázi
configure-moderationPhases-rotateSigningSecret = Rotovat podpisový klíč
configure-moderationPhases-rotateSigningSecretHelper =
  Po vypršení platnosti již nebudou generovány podpisy se starým klíčem.
configure-moderationPhases-expiresOldSecret =
  Vypršení platnosti starého klíče
configure-moderationPhases-expiresOldSecretImmediately =
  Okamžitě
configure-moderationPhases-expiresOldSecretHoursFromNow =
  { $hours ->
    [1] 1 hodinu
    *[other] { $hours } hodin
  } od teď
configure-moderationPhases-rotateSigningSecretSuccessUseNewSecret =
  Podpisový klíč externí fáze moderování byl zrotován. Ujistěte se prosím,
  že aktualizujete své integrace tak, aby používaly nový klíč uvedený níže.
configure-moderationPhases-confirmDisable =
  Zakázáním této externí fáze moderování se zastaví odesílání nových požadavků
  na moderování na tuto URL. Opravdu chcete pokračovat?
configure-moderationPhases-confirmEnable =
  Povolením externí fáze moderování se začnou odesílat požadavky na moderování
  na tuto URL. Opravdu chcete pokračovat?
configure-moderationPhases-confirmDelete =
  Smazáním této externí fáze moderování se zastaví odesílání nových požadavků
  na moderování na tuto URL a odeberou se všechna přidružená nastavení. Opravdu
  chcete pokračovat?

### Webhooks

configure-webhooks-generatedAt = KLÍČ VYGENEROVÁN:
  { DATETIME($date, year: "numeric", month: "numeric", day: "numeric", hour: "numeric", minute: "numeric") }
configure-webhooks-experimentalFeature =
  Funkce webhooků je v současné době v aktivním vývoji. Události mohou být
  přidány nebo odebrány. Prosím <ContactUsLink>kontaktujte nás s jakoukoliv zpětnou vazbou nebo požadavky</ContactUsLink>.
configure-webhooks-webhookEndpointNotFound = Webhook endpoint nebyl nalezen
configure-webhooks-header-title = Konfigurovat webhook endpoint
configure-webhooks-description =
  Nakonfigurujte endpoint pro odesílání událostí při výskytu událostí
  v Coral. Tyto události budou zakódovány ve formátu JSON a podepsány. Více
  informací o podepisování webhooků najdete v našem <externalLink>průvodci webhooky</externalLink>.
configure-webhooks-addEndpoint = Přidat webhook endpoint
configure-webhooks-addEndpointButton = Přidat webhook endpoint
configure-webhooks-endpoints = Endpointy
configure-webhooks-url = URL
configure-webhooks-status = Stav
configure-webhooks-noEndpoints = Nejsou nakonfigurovány žádné webhook endpointy, přidejte jeden výše.
configure-webhooks-enabledWebhookEndpoint = Povoleno
configure-webhooks-disabledWebhookEndpoint = Zakázáno
configure-webhooks-endpointURL = URL endpointu
configure-webhooks-cancelButton = Zrušit
configure-webhooks-updateWebhookEndpointButton = Aktualizovat webhook endpoint
configure-webhooks-eventsToSend = Události k odeslání
configure-webhooks-clearEventsToSend = Vymazat
configure-webhooks-eventsToSendDescription =
  Toto jsou události registrované pro tento konkrétní endpoint. Navštivte
  náš <externalLink>průvodce webhooky</externalLink> pro schéma těchto událostí.
  Jakákoliv událost odpovídající následujícímu bude odeslána na endpoint, pokud je
  povolen:
configure-webhooks-allEvents =
  Endpoint bude přijímat všechny události, včetně těch, které budou přidány v budoucnu.
configure-webhooks-selectedEvents =
  { $count } { $count ->
    [1] událost
    *[other] událostí
  } vybráno.
configure-webhooks-selectAnEvent =
  Vyberte události výše nebo <button>přijímejte všechny události</button>.
configure-webhooks-configureWebhookEndpoint = Konfigurovat webhook endpoint
configure-webhooks-confirmEnable =
  Povolením webhook endpointu se začnou odesílat události na tuto URL. Opravdu chcete pokračovat?
configure-webhooks-confirmDisable =
  Zakázáním tohoto webhook endpointu se zastaví odesílání nových událostí na tuto URL. Opravdu chcete pokračovat?
configure-webhooks-confirmDelete =
  Smazáním tohoto webhook endpointu se zastaví odesílání nových událostí na tuto URL a odeberou se všechna přidružená nastavení tohoto webhook endpointu. Opravdu chcete pokračovat?
configure-webhooks-dangerZone = Nebezpečná zóna
configure-webhooks-rotateSigningSecret = Rotovat podpisový klíč
configure-webhooks-rotateSigningSecretDescription =
  Rotace podpisového klíče vám umožní bezpečně nahradit podpisový
  klíč používaný v produkci se zpožděním.
configure-webhooks-rotateSigningSecretButton = Rotovat podpisový klíč
configure-webhooks-rotateSigningSecretHelper =
  Po vypršení platnosti již nebudou generovány podpisy se starým klíčem.
configure-webhooks-rotateSigningSecretSuccessUseNewSecret =
  Podpisový klíč webhook endpointu byl zrotován. Ujistěte se prosím,
  že aktualizujete své integrace tak, aby používaly nový klíč uvedený níže.
configure-webhooks-disableEndpoint = Zakázat endpoint
configure-webhooks-disableEndpointDescription =
  Tento endpoint je aktuálně povolen. Zakázáním tohoto endpointu nebudou
  na zadanou URL odesílány žádné nové události.
configure-webhooks-disableEndpointButton = Zakázat endpoint
configure-webhooks-enableEndpoint = Povolit endpoint
configure-webhooks-enableEndpointDescription =
  Tento endpoint je aktuálně zakázán. Povolením tohoto endpointu budou
  na zadanou URL odesílány nové události.
configure-webhooks-enableEndpointButton = Povolit endpoint
configure-webhooks-deleteEndpoint = Smazat endpoint
configure-webhooks-deleteEndpointDescription =
  Smazáním endpointu se zabrání odesílání nových událostí na zadanou
  URL.
configure-webhooks-deleteEndpointButton = Smazat endpoint
configure-webhooks-endpointStatus = Stav endpointu
configure-webhooks-signingSecret = Podpisový klíč
configure-webhooks-signingSecretDescription =
  Následující podpisový klíč se používá k podepisování datových částí požadavků
  odesílaných na URL. Více informací o podepisování webhooků najdete v našem
  <externalLink>průvodci webhooky</externalLink>.
configure-webhooks-expiresOldSecret = Vypršení platnosti starého klíče
configure-webhooks-expiresOldSecretImmediately = Okamžitě
configure-webhooks-expiresOldSecretHoursFromNow =
  { $hours ->
    [1] 1 hodinu
    *[other] { $hours } hodin
  }  od teď
configure-webhooks-detailsButton = Podrobnosti <icon>keyboard_arrow_right</icon>

### Obecné
configure-general-guidelines-title = Souhrn pravidel komunity
configure-general-guidelines-explanation =
  Toto se zobrazí nad komentáři na celém webu.
  Text můžete formátovat pomocí Markdown.
  Více informací o použití Markdown
  zde: <externalLink>https://www.markdownguide.org/cheat-sheet/</externalLink>
configure-general-guidelines-showCommunityGuidelines = Zobrazit souhrn pravidel komunity

#### Bio
configure-general-memberBio-title = Biografie komentátorů
configure-general-memberBio-explanation =
  Umožněte komentátorům přidat biografii do svého profilu. Poznámka: To může zvýšit pracovní zátěž moderátorů, protože biografie komentátorů mohou být nahlášeny.
configure-general-memberBio-label = Povolit biografie komentátorů

#### Jazyk
configure-general-locale-language = Jazyk
configure-general-locale-chooseLanguage = Vyberte jazyk pro vaši Coral komunitu.
configure-general-locale-invalidLanguage =
  Dříve vybraný jazyk <lang></lang> již neexistuje. Vyberte prosím jiný jazyk.

#### Komentování na celém webu
configure-general-sitewideCommenting-title = Komentování na celém webu
configure-general-sitewideCommenting-explanation =
  Otevřete nebo uzavřete proudy komentářů pro nové komentáře na celém webu.
  Když jsou nové komentáře vypnuty, nelze odesílat nové komentáře,
  ale stávající komentáře mohou nadále přijímat reakce,
  být nahlašovány a sdíleny.
configure-general-sitewideCommenting-enableNewCommentsSitewide =
  Povolit nové komentáře na celém webu
configure-general-sitewideCommenting-onCommentStreamsOpened =
  Zapnuto - Proudy komentářů otevřeny pro nové komentáře
configure-general-sitewideCommenting-offCommentStreamsClosed =
  Vypnuto - Proudy komentářů uzavřeny pro nové komentáře
configure-general-sitewideCommenting-message = Zpráva o uzavření komentářů na celém webu
configure-general-sitewideCommenting-messageExplanation =
  Napište zprávu, která se zobrazí, když jsou proudy komentářů na celém webu uzavřeny

#### Vložené odkazy
configure-general-embedLinks-title = Vložená média
configure-general-embedLinks-desc = Umožněte komentátorům přidat YouTube video, Tweet nebo GIF z knihovny GIPHY na konec jejich komentáře
configure-general-embedLinks-enableTwitterEmbeds = Povolit vkládání z Twitteru
configure-general-embedLinks-enableYouTubeEmbeds = Povolit vkládání z YouTube
configure-general-embedLinks-enableGiphyEmbeds = Povolit GIFy z GIPHY
configure-general-embedLinks-enableExternalEmbeds = Povolit externí média

configure-general-embedLinks-On = Ano
configure-general-embedLinks-Off = Ne

configure-general-embedLinks-giphyMaxRating = Hodnocení obsahu GIF
configure-general-embedLinks-giphyMaxRating-desc = Vyberte maximální hodnocení obsahu pro GIFy, které se zobrazí ve výsledcích vyhledávání komentátorů

configure-general-embedLinks-giphyMaxRating-g = G
configure-general-embedLinks-giphyMaxRating-g-desc = Obsah vhodný pro všechny věkové kategorie
configure-general-embedLinks-giphyMaxRating-pg = PG
configure-general-embedLinks-giphyMaxRating-pg-desc = Obsah obecně bezpečný pro všechny, ale pro děti se doporučuje rodičovský dohled.
configure-general-embedLinks-giphyMaxRating-pg13 = PG-13
configure-general-embedLinks-giphyMaxRating-pg13-desc = Mírné sexuální narážky, mírné užívání návykových látek, mírné vulgarismy nebo výhružné obrázky. Může obsahovat obrázky polonahých osob, ale NEZOBRAZUJE skutečné lidské genitálie ani nahotu.
configure-general-embedLinks-giphyMaxRating-r = R
configure-general-embedLinks-giphyMaxRating-r-desc = Silné výrazy, silné sexuální narážky, násilí a nelegální užívání drog; nevhodné pro teenagery a mladší. Žádná nahota.

configure-general-embedLinks-configuration = Konfigurace
configure-general-embedLinks-configuration-desc =
  Další informace o GIPHY API najdete na: <externalLink>https://developers.giphy.com/docs/api</externalLink>
configure-general-embedLinks-giphyAPIKey = GIPHY API klíč


#### Konfigurace oznámení

configure-general-announcements-title = Oznámení komunity
configure-general-announcements-description =
  Přidejte dočasné oznámení, které se zobrazí v horní části všech proudů komentářů vaší organizace po určitou dobu.
configure-general-announcements-delete = Odstranit oznámení
configure-general-announcements-add = Přidat oznámení
configure-general-announcements-start = Spustit oznámení
configure-general-announcements-cancel = Zrušit
configure-general-announcements-current-label = Aktuální oznámení
configure-general-announcements-current-duration =
  Toto oznámení automaticky skončí: { $timestamp }
configure-general-announcements-duration = Zobrazovat toto oznámení po dobu

#### Uzavírání proudů komentářů
configure-general-closingCommentStreams-title = Uzavírání proudů komentářů
configure-general-closingCommentStreams-explanation = Nastavte proudy komentářů tak, aby se uzavřely po stanovené době od publikace příběhu
configure-general-closingCommentStreams-closeCommentsAutomatically = Automaticky uzavřít komentáře
configure-general-closingCommentStreams-closeCommentsAfter = Uzavřít komentáře po

#### Délka komentáře
configure-general-commentLength-title = Délka komentáře
configure-general-commentLength-maxCommentLength = Maximální délka komentáře
configure-general-commentLength-setLimit =
  Nastavte minimální a maximální požadavky na délku komentáře.
  Prázdné mezery na začátku a konci komentáře budou odstraněny.
configure-general-commentLength-limitCommentLength = Omezit délku komentáře
configure-general-commentLength-minCommentLength = Minimální délka komentáře
configure-general-commentLength-characters = Znaky
configure-general-commentLength-textField =
  .placeholder = Bez omezení
configure-general-commentLength-validateLongerThanMin =
  Zadejte prosím číslo větší než minimální délka

#### Úprava komentáře
configure-general-commentEditing-title = Úprava komentáře
configure-general-commentEditing-explanation =
  Nastavte limit, jak dlouho mohou komentátoři upravovat své komentáře na celém webu.
  Upravené komentáře jsou označeny jako (Upraveno) v proudu komentářů a v
  moderátorském panelu.
configure-general-commentEditing-commentEditTimeFrame = Časový rámec pro úpravu komentáře
configure-general-commentEditing-seconds = Sekundy

#### Zploštění odpovědí
configure-general-flattenReplies-title = Zploštění odpovědí
configure-general-flattenReplies-enabled = Zploštění odpovědí povoleno
configure-general-flattenReplies-explanation =
  Změňte způsob zobrazení úrovní odpovědí. Při povolení mohou odpovědi na komentáře sahat až do sedmi úrovní hloubky, než přestanou být na stránce odsazeny. Při zakázání se po dosažení hloubky sedmi odpovědí zbytek konverzace zobrazí v samostatném zobrazení odděleně od ostatních komentářů.

#### Zpráva uzavřeného proudu
configure-general-closedStreamMessage-title = Zpráva uzavřeného proudu komentářů
configure-general-closedStreamMessage-explanation = Napište zprávu, která se zobrazí, když je příběh uzavřen pro komentování.

### Organizace
configure-organization-name = Název organizace
configure-organization-sites = Weby
configure-organization-nameExplanation =
  Název vaší organizace se zobrazí v e-mailech odesílaných { -product-name } vaší komunitě a členům organizace.
configure-organization-sites-explanation =
  Přidejte nový web do vaší organizace nebo upravte podrobnosti existujícího webu.
configure-organization-sites-add-site = <icon>add</icon> Přidat web
configure-organization-email = E-mail organizace
configure-organization-emailExplanation =
  Tato e-mailová adresa bude použita v e-mailech a na celé platformě,
  aby členové komunity mohli kontaktovat organizaci, pokud mají
  jakékoliv otázky ohledně stavu svých účtů nebo
  otázky týkající se moderování.
configure-organization-url = URL organizace
configure-organization-urlExplanation =
  URL vaší organizace se zobrazí v e-mailech odesílaných { -product-name } vaší komunitě a členům organizace.

### Weby
configure-sites-site-details = Podrobnosti <icon>keyboard_arrow_right</icon>
configure-sites-add-new-site = Přidat nový web do { $site }
configure-sites-add-success = { $site } byl přidán do { $org }
configure-sites-edit-success = Změny v { $site } byly uloženy.
configure-sites-site-form-name = Název webu
configure-sites-site-form-name-explanation = Název webu se zobrazí v e-mailech odesílaných Coral vaší komunitě a členům organizace.
configure-sites-site-form-url = URL webu
configure-sites-site-form-url-explanation = Tato URL se zobrazí v e-mailech odesílaných Coral členům vaší komunity.
configure-sites-site-form-email = E-mailová adresa webu
configure-sites-site-form-url-explanation = Tato e-mailová adresa slouží členům komunity ke kontaktování s dotazy nebo pokud potřebují pomoc. Např. comments@yoursite.com
configure-sites-site-form-domains = Povolené domény webu
configure-sites-site-form-domains-explanation = Domény, na kterých mohou být vloženy proudy komentářů Coral (např. http://localhost:3000, https://staging.domain.com, https://domain.com).
configure-sites-site-form-submit = <icon>add</icon> Přidat web
configure-sites-site-form-cancel = Zrušit
configure-sites-site-form-save = Uložit změny
configure-sites-site-edit = Upravit podrobnosti { $site }
configure-sites-site-form-embed-code = Kód pro vložení
sites-emptyMessage = Nenašli jsme žádné weby odpovídající vašim kritériím.
sites-selector-allSites = Všechny weby
site-filter-option-allSites = Všechny weby

site-selector-all-sites = Všechny weby
stories-filter-sites-allSites = Všechny weby
stories-filter-statuses = Stav
stories-column-site = Web
site-table-siteName = Název webu
stories-filter-sites = Web

site-search-searchButton =
  .aria-label = Hledat
site-search-textField =
  .aria-label = Hledat podle názvu webu
site-search-textField =
  .placeholder = Hledat podle názvu webu
site-search-none-found = S tímto vyhledáváním nebyly nalezeny žádné weby
specificSitesSelect-validation = Musíte vybrat alespoň jeden web.

stories-column-actions = Akce
stories-column-rescrape = Znovu načíst

stories-openInfoDrawer =
  .aria-label = Otevřít informační panel
stories-actions-popover =
  .description = Rozbalovací nabídka pro výběr akcí příběhu
stories-actions-rescrape = Znovu načíst
stories-actions-close = Uzavřít příběh
stories-actions-open = Otevřít příběh
stories-actions-archive = Archivovat příběh
stories-actions-unarchive = Dearchivovat příběh
stories-actions-isUnarchiving = Dearchivace

### Sekce

moderate-section-selector-allSections = Všechny sekce
moderate-section-selector-uncategorized = Nezařazené
moderate-section-uncategorized = Nezařazené

### E-mail

configure-email = Nastavení e-mailu
configure-email-configBoxEnabled = Povoleno
configure-email-fromNameLabel = Jméno odesílatele
configure-email-fromNameDescription =
  Jméno, jak se bude zobrazovat ve všech odchozích e-mailech
configure-email-fromEmailLabel = E-mailová adresa odesílatele
configure-email-fromEmailDescription =
  E-mailová adresa, která bude použita pro odesílání zpráv
configure-email-smtpHostLabel = SMTP host
configure-email-smtpHostDescription = (např. smtp.sendgrid.net)
configure-email-smtpPortLabel = SMTP port
configure-email-smtpPortDescription = (např. 25)
configure-email-smtpTLSLabel = TLS
configure-email-smtpAuthenticationLabel = SMTP ověřování
configure-email-smtpCredentialsHeader = E-mailové přihlašovací údaje
configure-email-smtpUsernameLabel = Uživatelské jméno
configure-email-smtpPasswordLabel = Heslo
configure-email-send-test = Odeslat testovací e-mail

### Ověřování

configure-auth-clientID = Client ID
configure-auth-clientSecret = Client secret
configure-auth-configBoxEnabled = Povoleno
configure-auth-targetFilterCoralAdmin = { -product-name } Administrace
configure-auth-targetFilterCommentStream = Proud komentářů
configure-auth-redirectURI = Redirect URI
configure-auth-registration = Registrace
configure-auth-registrationDescription =
  Umožněte uživatelům, kteří se dříve nezaregistrovali pomocí této
  integrace ověřování, zaregistrovat si nový účet.
configure-auth-registrationCheckBox = Povolit registraci
configure-auth-pleaseEnableAuthForAdmin =
  Povolte prosím alespoň jednu integraci ověřování pro { -product-name } Administraci
configure-auth-confirmNoAuthForCommentStream =
  Pro proud komentářů nebyla povolena žádná integrace ověřování.
  Opravdu chcete pokračovat?

configure-auth-facebook-loginWith = Přihlásit se přes Facebook
configure-auth-facebook-toEnableIntegration =
  Pro povolení integrace s ověřováním Facebooku
  musíte vytvořit a nastavit webovou aplikaci.
  Více informací najdete na: <Link></Link>.
configure-auth-facebook-useLoginOn = Použít přihlášení přes Facebook na

configure-auth-google-loginWith = Přihlásit se přes Google
configure-auth-google-toEnableIntegration =
  Pro povolení integrace s ověřováním Google musíte
  vytvořit a nastavit webovou aplikaci. Více informací najdete na:
  <Link></Link>.
configure-auth-google-useLoginOn = Použít přihlášení přes Google na

configure-auth-sso-loginWith = Přihlásit se přes jednotné přihlášení (SSO)
configure-auth-sso-useLoginOn = Použít jednotné přihlášení na
configure-auth-sso-key = Klíč
configure-auth-sso-regenerate = Přegenerovat
configure-auth-sso-regenerateAt = KLÍČ VYGENEROVÁN:
  { DATETIME($date, year: "numeric", month: "numeric", day: "numeric", hour: "numeric", minute: "numeric") }
configure-auth-sso-regenerateHonoredWarning =
  Při přegenerování klíče budou tokeny podepsané předchozím klíčem uznávány po dobu 30 dnů.

configure-auth-sso-description =
  Pro povolení integrace s vaším stávajícím systémem ověřování
  budete muset vytvořit JWT Token pro připojení. Více informací
  o vytvoření JWT Tokenu najdete v <IntroLink>tomto úvodu</IntroLink>. Podívejte se do naší
  <DocLink>dokumentace</DocLink> pro další informace o jednotném přihlášení.

configure-auth-sso-rotate-keys = Klíče
configure-auth-sso-rotate-keyID = ID klíče
configure-auth-sso-rotate-secret = Tajný klíč
configure-auth-sso-rotate-copySecret =
  .aria-label = Kopírovat tajný klíč

configure-auth-sso-rotate-date =
  { DATETIME($date, year: "numeric", month: "numeric", day: "numeric", hour: "numeric", minute: "numeric") }
configure-auth-sso-rotate-activeSince = Aktivní od
configure-auth-sso-rotate-inactiveAt = Neaktivní od
configure-auth-sso-rotate-inactiveSince = Neaktivní od

configure-auth-sso-rotate-status = Stav
configure-auth-sso-rotate-statusActive = Aktivní
configure-auth-sso-rotate-statusExpiring = Vypršení
configure-auth-sso-rotate-statusExpired = Vypršel
configure-auth-sso-rotate-statusUnknown = Neznámý

configure-auth-sso-rotate-expiringTooltip =
  SSO klíč vyprší, když je naplánován k rotaci.
configure-auth-sso-rotate-expiringTooltip-toggleButton =
  .aria-label = Přepnout viditelnost popisku vypršení
configure-auth-sso-rotate-expiredTooltip =
  SSO klíč vypršel, když byl vyřazen z používání.
configure-auth-sso-rotate-expiredTooltip-toggleButton =
  Přepnout viditelnost popisku vypršení

configure-auth-sso-rotate-rotate = Rotovat
configure-auth-sso-rotate-deactivateNow = Deaktivovat nyní
configure-auth-sso-rotate-delete = Smazat

configure-auth-sso-rotate-now = Nyní
configure-auth-sso-rotate-10seconds = 10 sekund od teď
configure-auth-sso-rotate-1day = 1 den od teď
configure-auth-sso-rotate-1week = 1 týden od teď
configure-auth-sso-rotate-30days = 30 dní od teď
configure-auth-sso-rotate-dropdown-description =
  .description = Rozbalovací nabídka pro rotaci SSO klíče

configure-auth-local-loginWith = Přihlásit se přes e-mailové ověřování
configure-auth-local-useLoginOn = Použít e-mailové ověřování na
configure-auth-local-forceAdminLocalAuth =
  Lokální ověřování administrátora bylo trvale povoleno.
  Tím je zajištěno, že servisní týmy Coral mají přístup k administračnímu panelu.

configure-auth-oidc-loginWith = Přihlásit se přes OpenID Connect
configure-auth-oidc-toLearnMore = Více informací: <Link></Link>
configure-auth-oidc-providerName = Název poskytovatele
configure-auth-oidc-providerNameDescription =
  Poskytovatel integrace OpenID Connect. Bude použit, když je potřeba
  zobrazit název poskytovatele, např. "Přihlásit se přes &lt;Facebook&gt;".
configure-auth-oidc-issuer = Vydavatel
configure-auth-oidc-issuerDescription =
  Po zadání informací o vydavateli klikněte na tlačítko Zjistit, aby { -product-name } doplnil
  zbývající pole. Informace můžete zadat také ručně.
configure-auth-oidc-authorizationURL = Autorizační URL
configure-auth-oidc-tokenURL = Token URL
configure-auth-oidc-jwksURI = JWKS URI
configure-auth-oidc-useLoginOn = Použít přihlášení přes OpenID Connect na

configure-auth-settings = Nastavení relace
configure-auth-settings-session-duration-label = Doba trvání relace

### Moderování

### Nedávná historie komentářů

configure-moderation-recentCommentHistory-title = Nedávná historie
configure-moderation-recentCommentHistory-timeFrame = Časové období nedávné historie komentářů
configure-moderation-recentCommentHistory-timeFrame-description =
  Doba pro výpočet míry zamítnutí komentátora.
configure-moderation-recentCommentHistory-enabled = Filtr nedávné historie
configure-moderation-recentCommentHistory-enabled-description =
  Zabraňuje opakovaným přestupkům publikovat komentáře bez schválení.
  Když míra zamítnutí komentátora překročí prahovou hodnotu, jeho
  komentáře jsou odeslány do fronty Čekající ke schválení moderátorem. To se
  nevztahuje na komentáře redakce.
configure-moderation-recentCommentHistory-triggerRejectionRate = Prahová hodnota míry zamítnutí
configure-moderation-recentCommentHistory-triggerRejectionRate-description =
  Zamítnuté komentáře ÷ (zamítnuté komentáře + publikované komentáře)
  za výše uvedené časové období, jako procento. Nezahrnuje
  komentáře čekající na kontrolu toxicity, spamu nebo předmoderování.

#### Externí odkazy pro moderátory
configure-moderation-externalLinks-title = Externí odkazy pro moderátory
configure-moderation-externalLinks-profile-explanation = Když je níže uveden formát URL,
  externí odkazy na profil se přidají do panelu uživatele v rozhraní moderování.
  Můžete použít formát $USER_NAME pro vložení uživatelského jména nebo $USER_ID
  pro vložení jedinečného ID čísla uživatele.
configure-moderation-externalLinks-profile-label = Vzor URL externího profilu
configure-moderation-externalLinks-profile-input =
  .placeholder = https://example.com/users/$USER_NAME

#### Předmoderování
configure-moderation-preModeration-title = Předmoderování
configure-moderation-preModeration-explanation =
  Když je předmoderování zapnuto, komentáře nebudou publikovány, dokud
  je neschválí moderátor.
configure-moderation-preModeration-moderation =
  Předmoderovat všechny komentáře
configure-moderation-preModeration-premodLinksEnable =
  Předmoderovat všechny komentáře obsahující odkazy

#### Moderování všech/konkrétních webů
configure-moderation-specificSites = Konkrétní weby
configure-moderation-allSites = Všechny weby

configure-moderation-apiKey = API klíč

configure-moderation-akismet-title = Filtr detekce spamu
configure-moderation-akismet-explanation =
  Filtr API Akismet varuje uživatele, když je komentář pravděpodobně
  spam. Komentáře, které Akismet považuje za spam, nebudou publikovány
  a budou umístěny do fronty Čekající ke kontrole moderátorem.
  Pokud je moderátor schválí, komentář bude publikován.

configure-moderation-premModeration-premodSuspectWordsEnable =
  Předmoderovat všechny komentáře obsahující podezřelá slova
configure-moderation-premModeration-premodSuspectWordsDescription =
  Seznam podezřelých slov můžete zobrazit a upravit <wordListLink>zde</wordListLink>

#### Akismet
configure-moderation-akismet-filter = Filtr detekce spamu
configure-moderation-akismet-ipBased = Detekce spamu na základě IP
configure-moderation-akismet-accountNote =
  Poznámka: Musíte přidat své aktivní domény
  ve svém účtu Akismet: <externalLink>https://akismet.com/account/</externalLink>
configure-moderation-akismet-siteURL = URL webu


#### Perspective
configure-moderation-perspective-title = Filtr toxických komentářů
configure-moderation-perspective-explanation =
  Pomocí Perspective API filtr toxických komentářů varuje uživatele,
  když komentáře překročí předdefinovanou prahovou hodnotu toxicity.
  Komentáře se skóre toxicity nad prahovou hodnotou
  <strong>nebudou publikovány</strong> a budou umístěny do
  <strong>fronty Čekající ke kontrole moderátorem</strong>.
  Pokud je moderátor schválí, komentář bude publikován.
configure-moderation-perspective-filter = Filtr toxických komentářů
configure-moderation-perspective-toxicityThreshold = Prahová hodnota toxicity
configure-moderation-perspective-toxicityThresholdDescription =
  Tato hodnota může být nastavena jako procento mezi 0 a 100. Toto číslo představuje pravděpodobnost, že
  komentář je toxický, podle Perspective API. Ve výchozím nastavení je prahová hodnota nastavena na { $default }.
configure-moderation-perspective-toxicityModel = Model toxicity
configure-moderation-perspective-toxicityModelDescription =
  Vyberte svůj model Perspective. Výchozí je { $default }.
  Více informací o volbě modelů najdete <externalLink>zde</externalLink>.
configure-moderation-perspective-allowStoreCommentData = Povolit Googlu ukládání dat komentářů
configure-moderation-perspective-allowStoreCommentDataDescription =
  Uložené komentáře budou použity pro budoucí výzkum a účely budování komunitních modelů
  pro zlepšení API v průběhu času.
configure-moderation-perspective-allowSendFeedback =
  Povolit Coral odesílat moderátorské akce Googlu
configure-moderation-perspective-allowSendFeedbackDescription =
  Odeslané moderátorské akce budou použity pro budoucí výzkum a
  účely budování komunitních modelů pro zlepšení API v průběhu času.
configure-moderation-perspective-customEndpoint = Vlastní endpoint
configure-moderation-perspective-defaultEndpoint =
  Ve výchozím nastavení je endpoint nastaven na { $default }. Můžete ho zde přepsat.
configure-moderation-perspective-accountNote =
  Další informace o nastavení filtru toxických komentářů Perspective najdete na:
  <externalLink>https://github.com/conversationai/perspectiveapi#readme</externalLink>

configure-moderation-newCommenters-title = Schvalování nových komentátorů
configure-moderation-newCommenters-enable = Povolit schvalování nových komentátorů
configure-moderation-newCommenters-description =
  Když je tato funkce aktivní, počáteční komentáře nového komentátora budou odeslány do fronty
  Čekající ke schválení moderátorem před publikací.
configure-moderation-newCommenters-enable-description = Povolit předmoderování pro nové komentátory
configure-moderation-newCommenters-approvedCommentsThreshold = Počet komentářů, které musí být schváleny
configure-moderation-newCommenters-approvedCommentsThreshold-description =
  Počet komentářů, které musí mít uživatel schváleny, než
  nemusí být předmoderován
configure-moderation-newCommenters-comments = komentářů

#### E-mailová doména
configure-moderation-emailDomains-header = E-mailová doména
configure-moderation-emailDomains-description = Vytvořte pravidla pro akce na účtech nebo komentářích na základě domény e-mailové adresy vlastníka účtu. Akce se vztahuje pouze na nově vytvořené účty.
configure-moderation-emailDomains-add = Přidat e-mailovou doménu
configure-moderation-emailDomains-edit = Upravit e-mailovou doménu
configure-moderation-emailDomains-addDomain = <icon>add</icon> Přidat doménu
configure-moderation-emailDomains-table-domain = Doména
configure-moderation-emailDomains-table-action = Akce
configure-moderation-emailDomains-table-edit = <icon>edit</icon> Upravit
configure-moderation-emailDomains-table-delete = <icon>delete</icon> Smazat
configure-moderation-emailDomains-form-label-domain = Doména
configure-moderation-emailDomains-form-label-moderationAction = Moderátorská akce
configure-moderation-emailDomains-banAllUsers = Zablokovat všechny nové účty komentátorů
configure-moderation-emailDomains-alwaysPremod = Vždy předmoderovat komentáře
configure-moderation-emailDomains-form-cancel = Zrušit
configure-moderation-emailDomains-form-addDomain = Přidat doménu
configure-moderation-emailDomains-form-editDomain = Aktualizovat
configure-moderation-emailDomains-confirmDelete = Smazáním této e-mailové domény se zastaví blokování nebo automatické předmoderování nových účtů vytvořených s ní. Opravdu chcete pokračovat?
configure-moderation-emailDomains-form-description-add = Přidejte doménu a vyberte akci, která se má provést u každého nového účtu vytvořeného pomocí zadané domény.
configure-moderation-emailDomains-form-description-edit = Aktualizujte doménu nebo akci, která se má provést u každého nového účtu používajícího zadanou doménu.

#### Konfigurace zakázaných slov
configure-wordList-banned-bannedWordsAndPhrases = Zakázaná slova a fráze
configure-wordList-banned-explanation =
  Komentáře obsahující slovo nebo frázi ze seznamu zakázaných slov jsou <strong>automaticky zamítnuty a nejsou publikovány</strong>.
configure-wordList-banned-wordList = Seznam zakázaných slov
configure-wordList-banned-wordListDetailInstructions =
  Zakázaná slova nebo fráze oddělujte novým řádkem. Slova/fráze nerozlišují velká a malá písmena.

#### Konfigurace podezřelých slov
configure-wordList-suspect-bannedWordsAndPhrases = Podezřelá slova a fráze
configure-wordList-suspect-explanation =
  Komentáře obsahující slovo nebo frázi ze seznamu podezřelých slov
  jsou <strong>umístěny do fronty Nahlášené ke kontrole moderátorem a jsou
  publikovány (pokud komentáře nejsou předmoderovány).</strong>
configure-wordList-suspect-explanationSuspectWordsList =
  Komentáře obsahující slovo nebo frázi ze seznamu podezřelých slov jsou
  <strong>umístěny do fronty Čekající ke kontrole moderátorem a nejsou
  publikovány, dokud je neschválí moderátor.</strong>
configure-wordList-suspect-wordList = Seznam podezřelých slov
configure-wordList-suspect-wordListDetailInstructions =
  Podezřelá slova nebo fráze oddělujte novým řádkem. Slova/fráze nerozlišují velká a malá písmena.

### Pokročilé
configure-advanced-customCSS = Vlastní CSS
configure-advanced-customCSS-override =
  URL CSS stylu, který přepíše výchozí styly vloženého proudu.
configure-advanced-customCSS-stylesheetURL = URL vlastního CSS stylu
configure-advanced-customCSS-fontsStylesheetURL = URL vlastního CSS stylu pro Font Faces
configure-advanced-customCSS-containsFontFace =
  URL vlastního CSS stylu, který obsahuje všechny definice @font-face
  potřebné výše uvedeným stylem.

configure-advanced-permittedDomains = Povolené domény
configure-advanced-permittedDomains-description =
  Domény, na kterých je povoleno vložení vaší instance { -product-name },
  včetně schématu (např. http://localhost:3000, https://staging.domain.com,
  https://domain.com).

configure-advanced-liveUpdates = Živé aktualizace proudu komentářů
configure-advanced-liveUpdates-explanation =
  Když je povoleno, komentáře se budou načítat a aktualizovat v reálném čase.
  Když je zakázáno, uživatelé budou muset obnovit stránku pro zobrazení nových komentářů.

configure-advanced-embedCode-title = Kód pro vložení
configure-advanced-embedCode-explanation =
  Zkopírujte a vložte kód níže do vašeho CMS pro vložení proudů komentářů Coral do
  každého z příběhů vašeho webu.

configure-advanced-embedCode-comment =
  Odkomentujte tyto řádky a nahraďte ID
  příběhu a URL z vašeho CMS pro zajištění
  nejtěsnější integrace. Podívejte se do naší dokumentace na
  https://docs.coralproject.net pro všechny možnosti
  konfigurace.

configure-advanced-amp = Akcelerované mobilní stránky
configure-advanced-amp-explanation =
  Povolte podporu pro <LinkToAMP>AMP</LinkToAMP> v proudu komentářů.
  Po povolení budete muset přidat kód pro vložení AMP Coral do šablony
  vaší stránky. Více podrobností najdete v naší <LinkToDocs>dokumentaci</LinkToDocs>.
  Povolit podporu.

configure-advanced-for-review-queue = Zkontrolovat všechna uživatelská nahlášení
configure-advanced-for-review-queue-explanation =
  Jakmile je komentář schválen, nezobrazí se znovu ve frontě nahlášených,
  i když ho nahlásí další uživatelé. Tato funkce přidává frontu "Ke kontrole",
  která umožňuje moderátorům vidět všechna uživatelská nahlášení v systému a ručně
  je označit jako "Zkontrolováno".
configure-advanced-for-review-queue-label = Zobrazit frontu "Ke kontrole"

## Historie rozhodnutí
decisionHistory-popover =
  .description = Dialog zobrazující historii rozhodnutí
decisionHistory-youWillSeeAList =
  Zde uvidíte seznam vašich moderátorských akcí.
decisionHistory-showMoreButton =
  Zobrazit více
decisionHistory-yourDecisionHistory = Vaše historie rozhodnutí
decisionHistory-rejectedCommentBy = Zamítnutý komentář od <Username></Username>
decisionHistory-approvedCommentBy = Schválený komentář od <Username></Username>
decisionHistory-goToComment = Přejít na komentář

### Slack

configure-slack-header-title = Integrace Slack
configure-slack-description =
  Automaticky odesílejte komentáře z moderátorských front Coral do kanálů
  Slack. Pro nastavení budete potřebovat přístup administrátora Slack. Postup
  vytvoření aplikace Slack najdete v naší <externalLink>dokumentaci</externalLink>.
configure-slack-notRecommended =
  Nedoporučuje se pro weby s více než 10 000 komentáři měsíčně.
configure-slack-addChannel = Přidat kanál

configure-slack-channel-defaultName = Nový kanál
configure-slack-channel-enabled = Povoleno
configure-slack-channel-remove = Odstranit kanál
configure-slack-channel-name-label = Název
configure-slack-channel-name-description =
  Toto slouží pouze pro vaši informaci, pro snadnou identifikaci
  každého připojení Slack. Slack nám nesděluje název
  kanálu/kanálů, které připojujete ke Coral.
configure-slack-channel-hookURL-label = Webhook URL
configure-slack-channel-hookURL-description =
  Slack poskytuje URL specifickou pro kanál pro aktivaci připojení
  webhooků. URL pro jeden z vašich kanálů Slack najdete
  podle pokynů <externalLink>zde</externalLink>.
configure-slack-channel-triggers-label =
  Přijímat oznámení v tomto kanálu Slack pro
configure-slack-channel-triggers-reportedComments = Nahlášené komentáře
configure-slack-channel-triggers-pendingComments = Čekající komentáře
configure-slack-channel-triggers-featuredComments = Vybrané komentáře
configure-slack-channel-triggers-allComments = Všechny komentáře
configure-slack-channel-triggers-staffComments = Komentáře redakce

## Moderování
moderate-navigation-reported = nahlášené
moderate-navigation-pending = Čekající
moderate-navigation-unmoderated = nemoderované
moderate-navigation-rejected = zamítnuté
moderate-navigation-approved = schválené
moderate-navigation-comment-count = { SHORT_NUMBER($count) }
moderate-navigation-forReview = ke kontrole

moderate-marker-preMod = Předmoderování
moderate-marker-link = Odkaz
moderate-marker-bannedWord = Zakázané slovo
moderate-marker-bio = Bio
moderate-marker-possibleBannedWord = Možné zakázané slovo
moderate-marker-suspectWord = Podezřelé slovo
moderate-marker-possibleSuspectWord = Možné podezřelé slovo
moderate-marker-spam = Spam
moderate-marker-spamDetected = Detekován spam
moderate-marker-toxic = Toxický
moderate-marker-recentHistory = Nedávná historie
moderate-marker-bodyCount = Počet slov
moderate-marker-offensive = Urážlivý
moderate-marker-abusive = Hrubý
moderate-marker-newCommenter = Nový komentátor
moderate-marker-repeatPost = Opakovaný komentář
moderate-marker-copyright = Autorská práva
moderate-marker-other = Jiné

moderate-markers-details = Podrobnosti
moderate-flagDetails-latestReports = Nejnovější nahlášení
moderate-flagDetails-offensive = Urážlivý
moderate-flagDetails-abusive = Hrubý
moderate-flagDetails-spam = Spam
moderate-flagDetails-bio = Bio
moderate-flagDetails-copyright = Porušení autorských práv
moderate-flagDetails-other = Jiné
moderate-flagDetails-anonymousReporter = Anonymní hlášení

## Modální okno s důvodem zamítnutí komentáře
moderate-rejectReasonModal-title = Důvod zamítnutí
moderate-rejectReasonModal-reasonPersonalAttacks = Osobní útoky, urážky, vulgarismy, poškozování CNC
moderate-rejectReasonModal-reasonSpam = Spam nebo jiná reklama
moderate-rejectReasonModal-reasonOffTopic = Off-topic, trolling, duplicity a jiné ničení diskuze
moderate-rejectReasonModal-reasonOther = Jiné zákonné důvody
moderate-rejectReasonModal-detailLabel = Podrobnější popis (volitelné)
moderate-rejectReasonModal-cancel = Zrušit
moderate-rejectReasonModal-confirm = Zamítnout

moderate-flagDetails-toxicityScore = Skóre toxicity
moderate-toxicityLabel-likely = Pravděpodobně <score></score>
moderate-toxicityLabel-unlikely = Nepravděpodobně <score></score>
moderate-toxicityLabel-maybe = Možná <score></score>

moderate-linkDetails-label = Kopírovat odkaz na tento komentář
moderate-in-stream-link-copy = V proudu
moderate-in-moderation-link-copy = V moderování

moderate-emptyQueue-pending = Výborně! Nejsou žádné další čekající komentáře k moderování.
moderate-emptyQueue-reported = Výborně! Nejsou žádné další nahlášené komentáře k moderování.
moderate-emptyQueue-unmoderated = Výborně! Všechny komentáře byly zmoderovány.
moderate-emptyQueue-rejected = Nejsou žádné zamítnuté komentáře.
moderate-emptyQueue-approved = Nejsou žádné schválené komentáře.

moderate-comment-edited = (upraveno)
moderate-comment-inReplyTo = Odpověď na <Username></Username>
moderate-comment-viewContext = Zobrazit kontext
moderate-comment-viewConversation = Zobrazit konverzaci
moderate-comment-rejectButton =
  .aria-label = Zamítnout
moderate-comment-approveButton =
  .aria-label = Schválit
moderate-comment-decision = Rozhodnutí
moderate-comment-story = Příběh
moderate-comment-storyLabel = Komentář k
moderate-comment-moderateStory = Moderovat příběh
moderate-comment-featureText = Vybrat
moderate-comment-featuredText = Vybraný
moderate-comment-moderatedBy = Moderoval/a
moderate-comment-moderatedBySystem = Systém
moderate-comment-play-gif = Přehrát GIF
moderate-comment-load-video = Načíst video

moderate-single-goToModerationQueues = Přejít do moderátorských front
moderate-single-singleCommentView = Zobrazení jednoho komentáře

moderate-queue-viewNew =
  { $count ->
    [1] Zobrazit {$count} nový komentář
    *[other] Zobrazit {$count} nových komentářů
  }

moderate-comment-deleted-body =
  Tento komentář již není dostupný. Komentátor smazal svůj účet.

### Vyhledávací lišta moderování
moderate-searchBar-allStories = Všechny příběhy
  .title = Všechny příběhy
moderate-searchBar-noStories = Nenašli jsme žádné příběhy odpovídající vašim kritériím
moderate-searchBar-stories = Příběhy:
moderate-searchBar-searchButton = Hledat
moderate-searchBar-titleNotAvailable =
  .title = Název není dostupný
moderate-searchBar-comboBox =
  .aria-label = Hledat nebo přejít na příběh
moderate-searchBar-searchForm =
  .aria-label = Příběhy
moderate-searchBar-currentlyModerating =
  .title = Aktuálně moderováno
moderate-searchBar-searchResults = Výsledky hledání
moderate-searchBar-searchResultsMostRecentFirst = Výsledky hledání (nejnovější první)
moderate-searchBar-searchResultsMostRelevantFirst = Výsledky hledání (nejrelevantnější první)
moderate-searchBar-moderateAllStories = Moderovat všechny příběhy
moderate-searchBar-comboBoxTextField =
  .aria-label = Hledat nebo přejít na příběh...
  .placeholder = hledat podle názvu příběhu, autora, URL, id atd.
moderate-searchBar-goTo = Přejít na
moderate-searchBar-seeAllResults = Zobrazit všechny výsledky

moderateCardDetails-tab-info = Info
moderateCardDetails-tab-edits = Historie úprav
moderateCardDetails-tab-automatedActions = Automatické akce
moderateCardDetails-tab-reactions = Reakce
moderateCardDetails-tab-reactions-loadMore = Načíst více
moderateCardDetails-tab-noIssuesFound = Nebyly nalezeny žádné problémy
moderateCardDetails-tab-missingPhase = Nebylo spuštěno

moderateCardDetails-tab-externalMod-status = Stav
moderateCardDetails-tab-externalMod-flags = Příznaky
moderateCardDetails-tab-externalMod-tags = Štítky

moderateCardDetails-tab-externalMod-none = Žádné
moderateCardDetails-tab-externalMod-approved = Schváleno
moderateCardDetails-tab-externalMod-rejected = Zamítnuto
moderateCardDetails-tab-externalMod-premod = Předmoderováno
moderateCardDetails-tab-externalMod-systemWithheld = Zadrženo systémem

### Panel historie uživatele při moderování

moderate-user-drawer-email =
  .title = E-mailová adresa
moderate-user-drawer-created-at =
  .title = Datum vytvoření účtu
moderate-user-drawer-member-id =
  .title = ID člena
moderate-user-drawer-external-profile-URL =
  .title = URL externího profilu
moderate-user-drawer-external-profile-URL-link = URL externího profilu
moderate-user-drawer-tab-all-comments = Všechny komentáře
moderate-user-drawer-tab-rejected-comments = Zamítnuté
moderate-user-drawer-tab-account-history = Historie účtu
moderate-user-drawer-tab-notes = Poznámky
moderate-user-drawer-load-more = Načíst více
moderate-user-drawer-all-no-comments = {$username} neodeslal/a žádné komentáře.
moderate-user-drawer-rejected-no-comments = {$username} nemá žádné zamítnuté komentáře.
moderate-user-drawer-user-not-found = Uživatel nenalezen.
moderate-user-drawer-status-label = Stav:
moderate-user-drawer-bio-title = Bio člena
moderate-user-drawer-username-not-available = Uživatelské jméno není dostupné
moderate-user-drawer-username-not-available-tooltip-title = Uživatelské jméno není dostupné
moderate-user-drawer-username-not-available-tooltip-body = Uživatel nedokončil proces nastavení účtu

moderate-user-drawer-account-history-system = <icon>computer</icon> Systém
moderate-user-drawer-account-history-suspension-ended = Pozastavení skončilo
moderate-user-drawer-account-history-suspension-removed = Pozastavení odstraněno
moderate-user-drawer-account-history-banned = Zablokován
moderate-user-drawer-account-history-ban-removed = Blokace odstraněna
moderate-user-drawer-account-history-site-banned = Zablokován na webu
moderate-user-drawer-account-history-site-ban-removed = Blokace na webu odstraněna
moderate-user-drawer-account-history-no-history = Na tomto účtu nebyly provedeny žádné akce
moderate-user-drawer-username-change = Změna uživatelského jména
moderate-user-drawer-username-change-new = Nové:
moderate-user-drawer-username-change-old = Staré:

moderate-user-drawer-account-history-premod-set = Vždy předmoderovat
moderate-user-drawer-account-history-premod-removed = Předmoderování odstraněno

moderate-user-drawer-account-history-modMessage-sent = Uživateli byla odeslána zpráva
moderate-user-drawer-account-history-modMessage-acknowledged = Zpráva potvrzena v { $acknowledgedAt }

moderate-user-drawer-suspension =
  Pozastavení, { $value } { $unit ->
    [second] { $value ->
      [1] sekunda
      *[other] sekund
    }
    [minute] { $value ->
      [1] minuta
      *[other] minut
    }
    [hour] { $value ->
      [1] hodina
      *[other] hodin
    }
    [day] { $value ->
      [1] den
      *[other] dní
    }
    [week] { $value ->
      [1] týden
      *[other] týdnů
    }
    [month] { $value ->
      [1] měsíc
      *[other] měsíců
    }
    [year] { $value ->
      [1] rok
      *[other] let
    }
    *[other] neznámá jednotka
  }


moderate-user-drawer-recent-history-title = Nedávná historie komentářů
moderate-user-drawer-recent-history-calculated =
  Vypočteno za posledních { framework-timeago-time }
moderate-user-drawer-recent-history-rejected = Zamítnuto
moderate-user-drawer-recent-history-tooltip-title = Jak se to počítá?
moderate-user-drawer-recent-history-tooltip-body =
  Zamítnuté komentáře ÷ (zamítnuté komentáře + publikované komentáře).
  Prahovou hodnotu mohou změnit administrátoři v Nastavení > Moderování.
moderate-user-drawer-recent-history-tooltip-button =
  .aria-label = Přepnout popisek nedávné historie komentářů
moderate-user-drawer-recent-history-tooltip-submitted = Odesláno

moderate-user-drawer-notes-field =
  .placeholder = Zanechat poznámku...
moderate-user-drawer-notes-button = Přidat poznámku
moderatorNote-left-by = Zanechal/a
moderatorNote-delete = Smazat

moderate-user-drawer-all-comments-archiveThreshold-allOfThisUsers =
  Všechny komentáře tohoto uživatele za předchozích { $value } { $unit ->
    [second] { $value ->
      [1] sekundu
      *[other] sekund
    }
    [minute] { $value ->
      [1] minutu
      *[other] minut
    }
    [hour] { $value ->
      [1] hodinu
      *[other] hodin
    }
    [day] { $value ->
      [1] den
      *[other] dní
    }
    [week] { $value ->
      [1] týden
      *[other] týdnů
    }
    [month] { $value ->
      [1] měsíc
      *[other] měsíců
    }
    [year] { $value ->
      [1] rok
      *[other] let
    }
    *[other] neznámá jednotka
  }.

# Fronta ke kontrole

moderate-forReview-reviewedButton =
  .aria-label = Zkontrolováno
moderate-forReview-markAsReviewedButton =
  .aria-label = Označit jako zkontrolované
moderate-forReview-time = Čas
moderate-forReview-comment = Komentář
moderate-forReview-reportedBy = Nahlásil/a
moderate-forReview-reason = Důvod
moderate-forReview-description = Popis
moderate-forReview-reviewed = Zkontrolováno

moderate-forReview-detectedBannedWord = Zakázané slovo
moderate-forReview-detectedLinks = Odkazy
moderate-forReview-detectedNewCommenter = Nový komentátor
moderate-forReview-detectedPreModUser = Předmoderovaný uživatel
moderate-forReview-detectedRecentHistory = Nedávná historie
moderate-forReview-detectedRepeatPost = Opakovaný příspěvek
moderate-forReview-detectedSpam = Spam
moderate-forReview-detectedSuspectWord = Podezřelé slovo
moderate-forReview-detectedToxic = Toxický jazyk
moderate-forReview-reportedAbusive = Hrubý
moderate-forReview-reportedBio = Bio uživatele
moderate-forReview-reportedCopyright = Porušení autorských práv
moderate-forReview-reportedOffensive = Urážlivý
moderate-forReview-reportedOther = Jiné
moderate-forReview-reportedSpam = Spam

# Archiv

moderate-archived-queue-title = Tento příběh byl archivován
moderate-archived-queue-noModerationActions =
  Když je příběh archivován, nelze na komentářích provádět žádné moderátorské akce.
moderate-archived-queue-toPerformTheseActions =
  Pro provedení těchto akcí příběh dearchivujte.

## Komunita
community-emptyMessage = Nenašli jsme nikoho ve vaší komunitě odpovídajícího vašim kritériím.

community-filter-searchField =
  .placeholder = Hledat podle uživatelského jména nebo e-mailové adresy...
  .aria-label = Hledat podle uživatelského jména nebo e-mailové adresy
community-filter-searchButton =
  .aria-label = Hledat

community-filter-roleSelectField =
  .aria-label = Hledat podle role

community-filter-statusSelectField =
  .aria-label = Hledat podle stavu uživatele

community-changeRoleButton =
  .aria-label = Změnit roli

community-assignMySitesToModerator = Přiřadit moderátora k mým webům
community-removeMySitesFromModerator = Odebrat moderátora z mých webů
community-assignMySitesToMember = Přiřadit člena k mým webům
community-removeMySitesFromMember = Odebrat člena z mých webů
community-stillHaveSiteModeratorPrivileges = Stále bude mít oprávnění moderátora webu pro:
community-stillHaveMemberPrivileges = Stále bude mít oprávnění člena pro:
community-userNoLongerPermitted = Uživatel již nebude moci činit moderátorská rozhodnutí ani udělovat pozastavení na:
community-memberNoLongerPermitted = Uživatel již nebude mít oprávnění člena na:
community-assignThisUser = Přiřadit tohoto uživatele k
community-assignYourSitesTo = Přiřadit vaše weby uživateli <strong>{ $username }</strong>
community-siteModeratorsArePermitted = Moderátoři webu mohou činit moderátorská rozhodnutí a udělovat pozastavení na webech, ke kterým jsou přiřazeni.
community-membersArePermitted = Členové mohou obdržet odznak na webech, ke kterým jsou přiřazeni.
community-removeSiteModeratorPermissions = Odebrat oprávnění moderátora webu
community-removeMemberPermissions = Odebrat oprávnění člena

community-filter-optGroupAudience =
  .label = Publikum
community-filter-optGroupOrganization =
  .label = Organizace
community-filter-search = Hledat
community-filter-showMe = Zobrazit
community-filter-allRoles = Všechny role
community-filter-allStatuses = Všechny stavy

community-column-username = Uživatelské jméno
community-column-username-not-available = Uživatelské jméno není dostupné
community-column-email-not-available = E-mail není dostupný
community-column-username-deleted = Smazáno
community-column-email = E-mail
community-column-memberSince = Členem od
community-column-role = Role
community-column-status = Stav

community-role-popover =
  .description = Rozbalovací nabídka pro změnu role uživatele

community-siteRoleActions-popover =
  .description = Rozbalovací nabídka pro povýšení/snížení uživatele na/z webů

community-userStatus-popover =
  .description = Rozbalovací nabídka pro změnu stavu uživatele

community-userStatus-manageBan = Spravovat blokaci
community-userStatus-suspendUser = Pozastavit uživatele
community-userStatus-suspend = Pozastavit
community-userStatus-suspendEverywhere = Pozastavit všude
community-userStatus-removeSuspension = Odstranit pozastavení
community-userStatus-removeUserSuspension = Odstranit pozastavení
community-userStatus-unknown = Neznámý
community-userStatus-changeButton =
  .aria-label = Změnit stav uživatele
community-userStatus-premodUser = Vždy předmoderovat
community-userStatus-removePremod = Odstranit předmoderování

community-banModal-allSites-title = Opravdu chcete zablokovat uživatele <username></username>?
community-banModal-banEmailDomain = Zablokovat všechny nové účty na { $domain }
community-banModal-specificSites-title = Opravdu chcete spravovat stav blokace uživatele <username></username>?
community-banModal-noSites-title = Opravdu chcete odblokovat uživatele <username></username>?
community-banModal-allSites-consequence =
  Po zablokování nebude tento uživatel moci komentovat, používat
  reakce ani nahlašovat komentáře.
community-banModal-noSites-consequence =
  Po odblokování bude tento uživatel moci komentovat, používat reakce a nahlašovat komentáře.
community-banModal-specificSites-consequence =
  Tato akce ovlivní, na kterých webech bude moci uživatel komentovat, používat reakce a nahlašovat komentáře.
community-banModal-cancel = Zrušit
community-banModal-updateBan = Uložit
community-banModal-ban = Zablokovat
community-banModal-unban = Odblokovat
community-banModal-customize = Přizpůsobit e-mailovou zprávu o blokaci
community-banModal-reject-existing = Zamítnout všechny komentáře tohoto uživatele
community-banModal-reject-existing-specificSites = Zamítnout všechny komentáře na těchto webech
community-banModal-reject-existing-singleSite = Zamítnout všechny komentáře na tomto webu

community-banModal-noSites = Žádné weby
community-banModal-banFrom = Zablokovat na
community-banModal-allSites = Všechny weby
community-banModal-specificSites = Konkrétní weby

community-suspendModal-areYouSure = Pozastavit uživatele <strong>{ $username }</strong>?
community-suspendModal-consequence =
  Po pozastavení nebude tento uživatel moci komentovat, používat
  reakce ani nahlašovat komentáře.
community-suspendModal-duration-3600 = 1 hodina
community-suspendModal-duration-10800 = 3 hodiny
community-suspendModal-duration-86400 = 24 hodin
community-suspendModal-duration-604800 = 7 dní
community-suspendModal-cancel = Zrušit
community-suspendModal-suspendUser = Pozastavit uživatele
community-suspendModal-emailTemplate =
  Dobrý den { $username },

  V souladu s pravidly komunity { $organizationName } byl váš účet dočasně pozastaven. Během pozastavení nebudete moci komentovat, nahlašovat ani komunikovat s ostatními komentátory. Prosím připojte se zpět ke konverzaci za { framework-timeago-time }.

community-suspendModal-customize = Přizpůsobit e-mailovou zprávu o pozastavení

community-suspendModal-success =
  <strong>{ $username }</strong> byl/a pozastaven/a na <strong>{ $duration }</strong>

community-suspendModal-success-close = Zavřít
community-suspendModal-selectDuration = Vyberte délku pozastavení

community-premodModal-areYouSure =
  Opravdu chcete vždy předmoderovat uživatele <strong>{ $username }</strong>?
community-premodModal-consequence =
  Všechny jeho komentáře půjdou do fronty Čekající, dokud tento stav neodstraníte.
community-premodModal-cancel = Zrušit
community-premodModal-premodUser = Ano, vždy předmoderovat

community-siteRoleModal-assignSites =
  Přiřadit weby pro <strong>{ $username }</strong>
community-siteRoleModal-assignSitesDescription-siteModerator =
  Moderátoři webu mohou činit moderátorská rozhodnutí a udělovat pozastavení na webech, ke kterým jsou přiřazeni.
community-siteRoleModal-cancel = Zrušit
community-siteRoleModal-update = Aktualizovat
community-siteRoleModal-selectSites-siteModerator = Vyberte weby k moderování
community-siteRoleModal-selectSites-member = Vyberte weby, jejichž členem bude tento uživatel
community-siteRoleModal-noSites = Žádné weby

community-invite-inviteMember = Pozvat členy do vaší organizace
community-invite-emailAddressLabel = E-mailová adresa:
community-invite-inviteMore = Pozvat další
community-invite-inviteAsLabel = Pozvat jako:
community-invite-sendInvitations = Odeslat pozvánky
community-invite-role-staff =
  <strong>Role redakce:</strong> Obdrží odznak "Redakce" a
  komentáře jsou automaticky schváleny. Nemůže moderovat
  ani měnit konfiguraci { -product-name }.
community-invite-role-moderator =
  <strong>Role moderátora:</strong> Obdrží
  odznak "Redakce" a komentáře jsou automaticky
  schváleny. Má plná moderátorská oprávnění (schvalovat,
  zamítat a vybírat komentáře). Může konfigurovat jednotlivé
  články, ale nemá oprávnění ke konfiguraci celého webu.
community-invite-role-admin =
  <strong>Role administrátora:</strong> Obdrží odznak "Redakce" a
  komentáře jsou automaticky schváleny. Má plná
  moderátorská oprávnění (schvalovat, zamítat a vybírat
  komentáře). Může konfigurovat jednotlivé články a má
  oprávnění ke konfiguraci celého webu.
community-invite-invitationsSent = Vaše pozvánky byly odeslány!
community-invite-close = Zavřít
community-invite-invite = Pozvat

community-warnModal-success =
  Varování bylo odesláno uživateli <strong>{ $username }</strong>.
community-warnModal-success-close = Ok
community-warnModal-areYouSure = Varovat uživatele <strong>{ $username }</strong>?
community-warnModal-consequence = Varování může zlepšit chování komentátora bez pozastavení nebo blokace. Uživatel musí potvrdit varování, než bude moci pokračovat v komentování.
community-warnModal-message-label = Zpráva
community-warnModal-message-required = Povinné
community-warnModal-message-description = Vysvětlete tomuto uživateli, jak by měl změnit své chování na vašem webu.
community-warnModal-cancel = Zrušit
community-warnModal-warnUser = Varovat uživatele
community-userStatus-warn = Varovat
community-userStatus-warnEverywhere = Varovat všude
community-userStatus-message = Zpráva

community-modMessageModal-success = Zpráva byla odeslána uživateli <strong>{ $username }</strong>.
community-modMessageModal-success-close = Ok
community-modMessageModal-areYouSure = Napsat zprávu uživateli <strong>{ $username }</strong>?
community-modMessageModal-consequence = Odešlete zprávu komentátorovi, která bude viditelná pouze pro něj.
community-modMessageModal-message-label = Zpráva
community-modMessageModal-message-required = Povinné
community-modMessageModal-cancel = Zrušit
community-modMessageModal-messageUser = Napsat uživateli

## Příběhy
stories-emptyMessage = Aktuálně nejsou žádné publikované příběhy.
stories-noMatchMessage = Nenašli jsme žádné příběhy odpovídající vašim kritériím.

stories-filter-searchField =
  .placeholder = Hledat podle názvu příběhu nebo autora...
  .aria-label = Hledat podle názvu příběhu nebo autora
stories-filter-searchButton =
  .aria-label = Hledat

stories-filter-statusSelectField =
  .aria-label = Hledat podle stavu

stories-changeStatusButton =
  .aria-label = Změnit stav

stories-filter-search = Hledat
stories-filter-showMe = Zobrazit
stories-filter-allStories = Všechny příběhy
stories-filter-openStories = Otevřené příběhy
stories-filter-closedStories = Uzavřené příběhy

stories-column-title = Název
stories-column-author = Autor
stories-column-publishDate = Datum publikace
stories-column-status = Stav
stories-column-clickToModerate = Klikněte na název pro moderování příběhu
stories-column-reportedCount = Nahlášené
stories-column-pendingCount = Čekající
stories-column-publishedCount = Publikované

stories-status-popover =
  .description = Rozbalovací nabídka pro změnu stavu příběhu

storyInfoDrawer-rescrapeTriggered = Spuštěno
storyInfoDrawer-triggerRescrape = Znovu načíst metadata
storyInfoDrawer-title = Podrobnosti příběhu
storyInfoDrawer-titleNotAvailable = Název příběhu není dostupný
storyInfoDrawer-authorNotAvailable = Autor není dostupný
storyInfoDrawer-publishDateNotAvailable = Datum publikace není dostupné
storyInfoDrawer-scrapedMetaData = Načtená metadata
storyInfoDrawer-configure = Nastavení
storyInfoDrawer-storyStatus-open = Otevřený
storyInfoDrawer-storyStatus-closed = Uzavřený
storyInfoDrawer-moderateStory = Moderovat
storyInfoDrawerSettings-premodLinksEnable = Předmoderovat komentáře obsahující odkazy
storyInfoDrawerSettings-premodCommentsEnable = Předmoderovat všechny komentáře
storyInfoDrawerSettings-moderation = Moderování
storyInfoDrawerSettings-moderationMode-pre = Před
storyInfoDrawerSettings-moderationMode-post = Po
storyInfoDrawerSettings-update = Aktualizovat
storyInfoDrawer-storyStatus-archiving = Archivace
storyInfoDrawer-storyStatus-archived = Archivováno


## Pozvánka

invite-youHaveBeenInvited = Byli jste pozváni do { $organizationName }
invite-finishSettingUpAccount = Dokončete nastavení účtu pro:
invite-createAccount = Vytvořit účet
invite-passwordLabel = Heslo
invite-passwordDescription = Musí mít alespoň { $minLength } znaků
invite-passwordTextField =
  .placeholder = Heslo
invite-usernameLabel = Uživatelské jméno
invite-usernameDescription = Můžete použít "_" a "."
invite-usernameTextField =
  .placeholder = Uživatelské jméno
invite-oopsSorry = Jejda, omlouváme se!
invite-successful = Váš účet byl vytvořen
invite-youMayNowSignIn = Nyní se můžete přihlásit do { -product-name } pomocí:
invite-goToAdmin = Přejít do { -product-name } Administrace
invite-goToOrganization = Přejít do { $organizationName }
invite-tokenNotFound =
  Zadaný odkaz je neplatný, zkontrolujte, zda byl správně zkopírován.

userDetails-banned-on = <strong>Zablokován</strong> { $timestamp }
userDetails-banned-by = <strong>od</strong> { $username }
userDetails-suspended-by = <strong>Pozastaven od</strong> { $username }
userDetails-suspension-start = <strong>Začátek:</strong> { $timestamp }
userDetails-suspension-end = <strong>Konec:</strong> { $timestamp }

userDetails-warned-on = <strong>Varován</strong> { $timestamp }
userDetails-warned-by = <strong>od</strong> { $username }
userDetails-warned-explanation = Uživatel dosud nepotvrdil varování.

configure-general-reactions-title = Reakce
configure-general-reactions-explanation =
  Umožněte vaší komunitě komunikovat a vyjadřovat se
  pomocí reakcí jedním kliknutím. Ve výchozím nastavení Coral umožňuje komentátorům
  vyjádřit "Respekt" komentářům ostatních.
configure-general-reactions-label = Popisek reakce
configure-general-reactions-input =
  .placeholder = Např. Respekt
configure-general-reactions-active-label = Popisek aktivní reakce
configure-general-reactions-active-input =
  .placeholder = Např. Respektováno
configure-general-reactions-sort-label = Popisek řazení
configure-general-reactions-sort-input =
  .placeholder = Např. Nejrespektovanější
configure-general-reactions-preview = Náhled
configure-general-reaction-sortMenu-sortBy = Řadit podle

configure-general-badges-title = Odznaky členů
configure-general-badges-explanation =
  Zobrazte vlastní odznak pro uživatele se zadanými rolemi. Tento odznak se zobrazí
  v proudu komentářů a v administračním rozhraní.
configure-general-badges-label = Text odznaku
configure-general-badges-staff-member-input =
  .placeholder = Např. Redakce
configure-general-badges-moderator-input =
  .placeholder = Např. Moderátor
configure-general-badges-admin-input =
  .placeholder = Např. Administrátor
configure-general-badges-member-input =
  .placeholder = Např. Člen
configure-general-badges-preview = Náhled
configure-general-badges-staff-member-label = Text odznaku redakce
configure-general-badges-admin-label = Text odznaku administrátora
configure-general-badges-moderator-label = Text odznaku moderátora
configure-general-badges-member-label = Text odznaku člena

configure-general-rte-title = Komentáře s formátováním
configure-general-rte-express = Dejte své komunitě více způsobů, jak se vyjádřit, než jen prostým textem, pomocí formátování.
configure-general-rte-richTextComments = Komentáře s formátováním
configure-general-rte-onBasicFeatures = Zapnuto - tučné, kurzíva, blokové citace a odrážkové seznamy
configure-general-rte-additional = Další možnosti formátování
configure-general-rte-strikethrough = Přeškrtnuté
configure-general-rte-spoiler = Spoiler
configure-general-rte-spoilerDesc =
  Slova a fráze formátované jako Spoiler jsou skryty za tmavým
  pozadím, dokud čtenář nezvolí zobrazení textu.

configure-account-features-title = Funkce správy účtu komentátora
configure-account-features-explanation =
  Můžete povolit a zakázat určité funkce, které mohou vaši komentátoři používat
  ve svém profilu. Tyto funkce také napomáhají souladu s GDPR.
configure-account-features-allow = Povolit uživatelům:
configure-account-features-change-usernames = Měnit svá uživatelská jména
configure-account-features-change-usernames-details = Uživatelská jména lze měnit jednou za 14 dní.
configure-account-features-yes = Ano
configure-account-features-no = Ne
configure-account-features-download-comments = Stahovat své komentáře
configure-account-features-download-comments-details = Komentátoři si mohou stáhnout CSV soubor s historií svých komentářů.
configure-account-features-delete-account = Smazat svůj účet
configure-account-features-delete-account-details =
  Odstraní všechna jejich data komentářů, uživatelské jméno a e-mailovou adresu z webu a databáze.

configure-account-features-delete-account-fieldDescriptions =
  Odstraní všechna jejich data komentářů, uživatelské jméno a
  e-mailovou adresu z webu a databáze.

configure-advanced-stories = Vytváření příběhů
configure-advanced-stories-explanation = Pokročilá nastavení způsobu vytváření příběhů v Coral.
configure-advanced-stories-lazy = Líné vytváření příběhů
configure-advanced-stories-lazy-detail = Povolte automatické vytváření příběhů při jejich publikaci z vašeho CMS.
configure-advanced-stories-scraping = Načítání příběhů
configure-advanced-stories-scraping-detail = Povolte automatické načítání metadat příběhů při jejich publikaci z vašeho CMS.
configure-advanced-stories-proxy = URL proxy pro načítání
configure-advanced-stories-proxy-detail =
  Pokud je zadáno, umožňuje požadavkům na načítání používat poskytnutou
  proxy. Všechny požadavky pak budou procházet příslušnou
  proxy, jak je analyzována balíčkem <externalLink>npm proxy-agent</externalLink>.
configure-advanced-stories-custom-user-agent = Vlastní hlavička User Agent pro načítání
configure-advanced-stories-custom-user-agent-detail =
  Pokud je zadáno, přepíše hlavičku <code>User-Agent</code> odesílanou s každým
  požadavkem na načítání.

configure-advanced-stories-authentication = Ověřování
configure-advanced-stories-scrapingCredentialsHeader = Přihlašovací údaje pro načítání
configure-advanced-stories-scraping-usernameLabel = Uživatelské jméno
configure-advanced-stories-scraping-passwordLabel = Heslo

commentAuthor-status-banned = Zablokován
commentAuthor-status-premod = Předmoderování
commentAuthor-status-suspended = Pozastaven

hotkeysModal-title = Klávesové zkratky
hotkeysModal-navigation-shortcuts = Navigační zkratky
hotkeysModal-shortcuts-next = Další komentář
hotkeysModal-shortcuts-prev = Předchozí komentář
hotkeysModal-shortcuts-search = Otevřít vyhledávání
hotkeysModal-shortcuts-jump = Přejít na konkrétní frontu
hotkeysModal-shortcuts-switch = Přepnout fronty
hotkeysModal-shortcuts-toggle = Přepnout nápovědu zkratek
hotkeysModal-shortcuts-single-view = Zobrazení jednoho komentáře
hotkeysModal-moderation-decisions = Moderátorská rozhodnutí
hotkeysModal-shortcuts-approve = Schválit
hotkeysModal-shortcuts-reject = Zamítnout
hotkeysModal-shortcuts-ban = Zablokovat autora komentáře
hotkeysModal-shortcuts-zen = Přepnout zobrazení jednoho komentáře

authcheck-network-error = Došlo k chybě sítě. Obnovte prosím stránku.

dashboard-heading-last-updated = Naposledy aktualizováno:

dashboard-today-heading = Dnešní aktivita
dashboard-today-new-comments = Nové komentáře
dashboard-alltime-new-comments = Celkem za celou dobu
dashboard-alltime-new-comments-archiveEnabled = { $value } { $unit ->
    [second] { $value ->
      [1] sekunda
      *[other] sekund
    }
    [minute] { $value ->
      [1] minuta
      *[other] minut
    }
    [hour] { $value ->
      [1] hodina
      *[other] hodin
    }
    [day] { $value ->
      [1] den
      *[other] dní
    }
    [week] { $value ->
      [1] týden
      *[other] týdnů
    }
    [month] { $value ->
      [1] měsíc
      *[other] měsíců
    }
    [year] { $value ->
      [1] rok
      *[other] let
    }
    *[other] neznámá jednotka
  } celkem
dashboard-today-rejections = Míra zamítnutí
dashboard-alltime-rejections = Průměr za celou dobu
dashboard-alltime-rejections-archiveEnabled = { $value } { $unit ->
    [second] { $value ->
      [1] sekunda
      *[other] sekund
    }
    [minute] { $value ->
      [1] minuta
      *[other] minut
    }
    [hour] { $value ->
      [1] hodina
      *[other] hodin
    }
    [day] { $value ->
      [1] den
      *[other] dní
    }
    [week] { $value ->
      [1] týden
      *[other] týdnů
    }
    [month] { $value ->
      [1] měsíc
      *[other] měsíců
    }
    [year] { $value ->
      [1] rok
      *[other] let
    }
    *[other] neznámá jednotka
  } průměr
dashboard-today-staffPlus-comments = Komentáře redakce+
dashboard-alltime-staff-comments = Celkem za celou dobu
dashboard-alltime-staff-comments-archiveEnabled = { $value } { $unit ->
    [second] { $value ->
      [1] sekunda
      *[other] sekund
    }
    [minute] { $value ->
      [1] minuta
      *[other] minut
    }
    [hour] { $value ->
      [1] hodina
      *[other] hodin
    }
    [day] { $value ->
      [1] den
      *[other] dní
    }
    [week] { $value ->
      [1] týden
      *[other] týdnů
    }
    [month] { $value ->
      [1] měsíc
      *[other] měsíců
    }
    [year] { $value ->
      [1] rok
      *[other] let
    }
    *[other] neznámá jednotka
  } celkem
dashboard-today-signups = Noví členové komunity
dashboard-alltime-signups = Celkem členů
dashboard-today-bans = Zablokovaní členové
dashboard-alltime-bans = Celkem zablokovaných členů

dashboard-top-stories-today-heading = Dnes nejkomentovanější příběhy
dashboard-top-stories-table-header-story = Příběh
dashboard-top-stories-table-header-comments = Komentáře
dashboard-top-stories-no-comments = Dnes žádné komentáře

dashboard-commenters-activity-heading = Noví členové komunity tento týden

dashboard-comment-activity-heading = Hodinová aktivita komentářů
dashboard-comment-activity-tooltip-comments = Komentáře
dashboard-comment-activity-legend = Průměr za poslední 3 dny

conversation-modal-conversationOn = Konverzace k:
conversation-modal-moderateStory = Moderovat příběh
conversation-modal-showMoreParents = Zobrazit více z této konverzace
conversation-modal-showReplies = Zobrazit odpovědi
conversation-modal-commentNotFound = Komentář nenalezen.
conversation-modal-showMoreReplies = Zobrazit více odpovědí
conversation-modal-header-title = Konverzace k:
conversation-modal-header-moderate-link = Moderovat příběh
