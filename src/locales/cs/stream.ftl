### Lokalizace pro vložený stream

## Obecné

general-commentsEmbedSection =
  .aria-label = Vložené komentáře

general-moderate = Moderovat
general-archived = Archivováno

general-userBoxUnauthenticated-joinTheConversation = Zapojte se do diskuze
general-userBoxUnauthenticated-signIn = Přihlásit se
general-userBoxUnauthenticated-register = Zaregistrovat se

general-authenticationSection =
  .aria-label = Ověření

general-userBoxAuthenticated-signedIn =
  Přihlášen(a) jako
general-userBoxAuthenticated-notYou =
  Nejste to vy? <button>Odhlásit se</button>

general-userBox-youHaveBeenSuccessfullySignedOut =
  Byli jste úspěšně odhlášeni

general-tabBar-commentsTab = Komentáře
general-tabBar-myProfileTab = Můj profil
general-tabBar-discussionsTab = Diskuze
general-tabBar-reviewsTab = Recenze
general-tabBar-configure = Nastavení

general-mainTablist =
  .aria-label = Hlavní seznam záložek

general-secondaryTablist =
  .aria-label = Vedlejší seznam záložek

## Počet komentářů

comment-count-text =
  { $count  ->
    [one] Komentář
    [few] Komentáře
    *[other] Komentářů
  }

comment-count-text-ratings =
  { $count  ->
    [one] Hodnocení
    [few] Hodnocení
    *[other] Hodnocení
  }

## Záložka komentářů
addACommentButton =
  .aria-label = Přidat komentář. Toto tlačítko přesune zaměření na konec komentářů.

comments-allCommentsTab = Všechny komentáře
comments-featuredTab = Vybrané
comments-counter-shortNum = { SHORT_NUMBER($count) }
comments-watchers =
  { $count  ->
    [one] 1 osoba sleduje tuto diskuzi
    [few] { SHORT_NUMBER($count) } osoby sledují tuto diskuzi
    *[other] { SHORT_NUMBER($count) } osob sleduje tuto diskuzi
  }

comments-announcement-section =
  .aria-label = Oznámení
comments-announcement-closeButton =
  .aria-label = Zavřít oznámení

comments-accountStatus-section =
  .aria-label = Stav účtu

comments-featuredCommentTooltip-how = Jak se komentář stane vybraným?
comments-featuredCommentTooltip-handSelectedComments =
  Komentáře vybírá náš tým jako hodné přečtení.
comments-featuredCommentTooltip-toggleButton =
  .aria-label = Přepnout popisek vybraných komentářů
  .title = Přepnout popisek vybraných komentářů

comments-collapse-toggle-with-username =
  .aria-label = Skrýt komentář od { $username } a jeho odpovědi
comments-collapse-toggle-without-username =
  .aria-label = Skrýt komentář a jeho odpovědi
comments-expand-toggle-with-username =
  .aria-label = Zobrazit komentář od { $username } a jeho odpovědi
comments-expand-toggle-without-username =
  .aria-label = Zobrazit komentář a jeho odpovědi
comments-bannedInfo-bannedFromCommenting = Váš účet byl zablokován pro komentování.
comments-bannedInfo-violatedCommunityGuidelines =
  Někdo s přístupem k vašemu účtu porušil pravidla naší komunity.
  V důsledku toho byl váš účet zablokován. Již nebudete moci
  komentovat, používat reakce ani nahlašovat komentáře. Pokud si
  myslíte, že se jedná o omyl, kontaktujte prosím náš komunitní tým.

comments-noCommentsAtAll = K tomuto článku nejsou žádné komentáře.
comments-noCommentsYet = Zatím nejsou žádné komentáře. Proč nenapíšete první?

comments-streamQuery-storyNotFound = Článek nebyl nalezen

comments-communityGuidelines-section =
  .aria-label = Pravidla komunity

comments-commentForm-cancel = Zrušit
comments-commentForm-saveChanges = Uložit změny
comments-commentForm-submit = Odeslat

comments-postCommentForm-section =
  .aria-label = Napsat komentář
comments-postCommentForm-submit = Odeslat
comments-replyList-showAll = Zobrazit vše
comments-replyList-showMoreReplies = Zobrazit více odpovědí

comments-postComment-gifSearch = Vyhledat GIF
comments-postComment-gifSearch-search =
  .aria-label = Hledat
comments-postComment-gifSearch-loading = Načítání...
comments-postComment-gifSearch-no-results = Žádné výsledky pro {$query}
comments-postComment-gifSearch-powered-by-giphy =
  .alt = Využívá giphy

comments-postComment-pasteImage = Vložit URL obrázku
comments-postComment-insertImage = Vložit

comments-postComment-confirmMedia-youtube = Přidat toto YouTube video na konec vašeho komentáře?
comments-postComment-confirmMedia-twitter = Přidat tento Tweet na konec vašeho komentáře?
comments-postComment-confirmMedia-cancel = Zrušit
comments-postComment-confirmMedia-add-tweet = Přidat Tweet
comments-postComment-confirmMedia-add-video = Přidat video
comments-postComment-confirmMedia-remove = Odebrat
comments-commentForm-gifPreview-remove = Odebrat
comments-viewNew-loading = Načítání...
comments-viewNew =
  { $count ->
    [1] Zobrazit {$count} nový komentář
    *[other] Zobrazit {$count} nových komentářů
  }
comments-loadMore = Načíst více
comments-loadAll = Načíst všechny komentáře
comments-loadAll-loading = Načítání...

comments-permalinkPopover =
  .description = Dialog zobrazující trvalý odkaz na komentář
comments-permalinkPopover-permalinkToComment =
  .aria-label = Trvalý odkaz na komentář
comments-permalinkButton-share = Sdílet
comments-permalinkButton =
  .aria-label = Sdílet komentář od {$username}
comments-permalinkView-section =
  .aria-label = Jednotlivá konverzace
comments-permalinkView-viewFullDiscussion = Zobrazit celou diskuzi
comments-permalinkView-commentRemovedOrDoesNotExist = Tento komentář byl odstraněn nebo neexistuje.

comments-rte-bold =
  .title = Tučné

comments-rte-italic =
  .title = Kurzíva

comments-rte-blockquote =
  .title = Citace

comments-rte-bulletedList =
  .title = Odrážkový seznam

comments-rte-strikethrough =
  .title = Přeškrtnuté

comments-rte-spoiler = Spoiler

comments-rte-sarcasm = Sarkasmus

comments-rte-externalImage =
  .title = Externí obrázek

comments-remainingCharacters = Zbývá { $remaining } znaků

comments-postCommentFormFake-signInAndJoin = Přihlaste se a zapojte se do diskuze

comments-postCommentForm-rteLabel = Napsat komentář

comments-postCommentForm-rte =
  .placeholder = { comments-postCommentForm-rteLabel }

comments-postCommentFormFake-rte =
  .placeholder = { comments-postCommentForm-rteLabel }

comments-replyButton-reply = Odpovědět
comments-replyButton =
  .aria-label = Odpovědět na komentář od {$username}

comments-permalinkViewQuery-storyNotFound = { comments-streamQuery-storyNotFound }

comments-replyCommentForm-submit = Odeslat
comments-replyCommentForm-cancel = Zrušit
comments-replyCommentForm-rteLabel = Napsat odpověď
comments-replyCommentForm-rte =
  .placeholder = { comments-replyCommentForm-rteLabel }

comments-commentContainer-threadLevelLabel = Úroveň vlákna { $level }:
comments-commentContainer-highlightedLabel = Zvýrazněno:
comments-commentContainer-ancestorLabel = Nadřazený:
comments-commentContainer-replyLabel =
  Odpověď od { $username } <RelativeTime></RelativeTime>
comments-commentContainer-questionLabel =
  Otázka od { $username } <RelativeTime></RelativeTime>
comments-commentContainer-commentLabel =
  Komentář od { $username } <RelativeTime></RelativeTime>
comments-commentContainer-editButton = Upravit

comments-commentContainer-avatar =
  .alt = Avatar uživatele { $username }

comments-editCommentForm-saveChanges = Uložit změny
comments-editCommentForm-cancel = Zrušit
comments-editCommentForm-close = Zavřít
comments-editCommentForm-rteLabel = Upravit komentář
comments-editCommentForm-rte =
  .placeholder = { comments-editCommentForm-rteLabel }
comments-editCommentForm-editRemainingTime = Úprava: zbývá <time></time>
comments-editCommentForm-editTimeExpired = Čas na úpravy vypršel. Tento komentář již nemůžete upravit. Proč nenapíšete další?
comments-editedMarker-edited = Upraveno
comments-showConversationLink-readMore = Číst více z této konverzace >
comments-conversationThread-showMoreOfThisConversation =
  Zobrazit více z této konverzace

comments-permalinkView-currentViewing =
comments-permalinkView-singleConversation =
comments-permalinkView-youAreCurrentlyViewing =
  Právě si prohlížíte jednotlivou konverzaci
comments-inReplyTo = V odpovědi na <Username></Username>
comments-replyingTo = Odpovídáte uživateli <Username></Username>

comments-reportButton-report = Nahlásit
comments-reportButton-reported = Nahlášeno
comments-reportButton-aria-report =
  .aria-label = Nahlásit komentář od {$username}
comments-reportButton-aria-reported =
  .aria-label = Nahlášeno

comments-sortMenu-sortBy = Řadit podle
comments-sortMenu-newest = Nejnovější
comments-sortMenu-oldest = Nejstarší
comments-sortMenu-mostReplies = Nejvíce odpovědí

comments-userPopover =
  .description = Vyskakovací okno s dalšími informacemi o uživateli
comments-userPopover-memberSince = Členem od: { DATETIME($timestamp, year: "numeric", month: "long", day: "numeric") }
comments-userPopover-ignore = Ignorovat

comments-userIgnorePopover-ignoreUser = Ignorovat uživatele {$username}?
comments-userIgnorePopover-description =
  Když ignorujete komentátora, všechny jeho komentáře
  na webu budou před vámi skryty. Toto můžete
  později zrušit v sekci Můj profil.
comments-userIgnorePopover-ignore = Ignorovat
comments-userIgnorePopover-cancel = Zrušit

comments-userBanPopover-title = Zablokovat uživatele {$username}?
comments-userSiteBanPopover-title = Zablokovat uživatele {$username} na tomto webu?
comments-userBanPopover-description =
  Po zablokování nebude tento uživatel moci
  komentovat, používat reakce ani nahlašovat komentáře.
  Tento komentář bude také zamítnut.
comments-userBanPopover-cancel = Zrušit
comments-userBanPopover-ban = Zablokovat

comments-moderationDropdown-popover =
  .description = Vyskakovací nabídka pro moderování komentáře
comments-moderationDropdown-feature = Vybrat
comments-moderationDropdown-unfeature = Zrušit výběr
comments-moderationDropdown-approve = Schválit
comments-moderationDropdown-approved = Schváleno
comments-moderationDropdown-reject = Zamítnout
comments-moderationDropdown-rejected = Zamítnuto
comments-moderationDropdown-ban = Zablokovat uživatele
comments-moderationDropdown-siteBan = Zablokovat na webu
comments-moderationDropdown-banned = Zablokován
comments-moderationDropdown-goToModerate =
comments-moderationDropdown-moderationView = Zobrazení moderace
comments-moderationDropdown-moderateStory = Moderovat článek
comments-moderationDropdown-caretButton =
  .aria-label = Moderovat

comments-moderationRejectedTombstone-title = Zamítli jste tento komentář.
comments-moderationRejectedTombstone-moderateLink =
  Přejděte do moderace a zkontrolujte toto rozhodnutí

comments-featuredTag = Vybraný

# $reaction může být například "Respekt". Při překladu do jiných jazyků s odlišnými gramatickými pády buďte opatrní.
comments-react =
  .aria-label = {$count ->
    [0] {$reaction} komentář od {$username}
    *[other] {$reaction} komentář od {$username} (Celkem: {$count})
  }

# $reaction může být například "Oceněno". Při překladu do jiných jazyků s odlišnými gramatickými pády buďte opatrní.
comments-reacted =
  .aria-label = {$count ->
    [0] {$reaction} komentář od {$username}
    [one] {$reaction} komentář od {$username}
    *[other] {$reaction} komentář od {$username} (Celkem: {$count})
  }

comments-jumpToComment-title = Vaše odpověď byla zveřejněna níže
comments-jumpToComment-GoToReply = Přejít na odpověď

comments-mobileToolbar-closeButton =
  .aria-label = Zavřít
comments-mobileToolbar-unmarkAll = Označit vše jako přečtené
comments-mobileToolbar-nextUnread = Další nepřečtený

comments-replyChangedWarning-theCommentHasJust =
  Tento komentář byl právě upraven. Nejnovější verze je zobrazena výše.

### Otázky a odpovědi

general-tabBar-qaTab = Otázky a odpovědi

qa-postCommentForm-section =
  .aria-label = Položit otázku

qa-answeredTab = Zodpovězené
qa-unansweredTab = Nezodpovězené
qa-allCommentsTab = Vše

qa-answered-answerLabel =
  Odpověď od {$username} <RelativeTime></RelativeTime>
qa-answered-gotoConversation = Přejít na konverzaci
qa-answered-replies = Odpovědi

qa-noQuestionsAtAll =
  K tomuto článku nejsou žádné otázky.
qa-noQuestionsYet =
  Zatím nejsou žádné otázky. Proč nepoložíte první?
qa-viewNew-loading = Načítání...
qa-viewNew =
  { $count ->
    [1] Zobrazit {$count} novou otázku
    *[other] Zobrazit {$count} nových otázek
  }

qa-postQuestionForm-rteLabel = Položit otázku
qa-postQuestionForm-rte =
  .placeholder = { qa-postQuestionForm-rteLabel }
qa-postQuestionFormFake-rte =
  .placeholder = { qa-postQuestionForm-rteLabel }

qa-sortMenu-mostVoted = Nejvíce hlasů

qa-answered-tag = zodpovězeno
qa-expert-tag = expert

qa-reaction-vote = Hlasovat
qa-reaction-voted = Hlasováno

qa-reaction-aria-vote =
  .aria-label = {$count ->
    [0] Hlasovat pro komentář od {$username}
    *[other] Hlasovat ({$count}) pro komentář od {$username}
  }
qa-reaction-aria-voted =
  .aria-label = {$count ->
    [0] Hlasováno pro komentář od {$username}
    [one] Hlasováno pro komentář od {$username}
    *[other] Hlasováno ({$count}) pro komentář od {$username}
  }

qa-unansweredTab-doneAnswering = Hotovo

qa-expert-email = ({ $email })

qa-answeredTooltip-how = Jak se zodpoví otázka?
qa-answeredTooltip-answeredComments =
  Na otázky odpovídá expert v sekci Otázky a odpovědi.
qa-answeredTooltip-toggleButton =
  .aria-label = Přepnout popisek zodpovězených otázek
  .title = Přepnout popisek zodpovězených otázek

### Stream smazání účtu

comments-stream-deleteAccount-callOut-title =
  Požadavek na smazání účtu
comments-stream-deleteAccount-callOut-receivedDesc =
  Požadavek na smazání vašeho účtu byl přijat dne { $date }.
comments-stream-deleteAccount-callOut-cancelDesc =
  Pokud chcete i nadále přidávat komentáře, odpovědi nebo reakce,
  můžete zrušit svůj požadavek na smazání účtu před { $date }.
comments-stream-deleteAccount-callOut-cancel =
  Zrušit požadavek na smazání účtu
comments-stream-deleteAccount-callOut-cancelAccountDeletion =
  Zrušit smazání účtu

comments-permalink-copyLink = Kopírovat odkaz
comments-permalink-linkCopied = Odkaz zkopírován

### Vložené odkazy

comments-embedLinks-showEmbeds = Zobrazit vložené prvky
comments-embedLinks-hideEmbeds = Skrýt vložené prvky

comments-embedLinks-show-giphy = Zobrazit GIF
comments-embedLinks-hide-giphy = Skrýt GIF

comments-embedLinks-show-youtube = Zobrazit video
comments-embedLinks-hide-youtube = Skrýt video

comments-embedLinks-show-twitter = Zobrazit Tweet
comments-embedLinks-hide-twitter = Skrýt Tweet

comments-embedLinks-show-external = Zobrazit obrázek
comments-embedLinks-hide-external = Skrýt obrázek

comments-embedLinks-expand = Rozbalit

### Vybrané komentáře
comments-featured-label =
  Vybraný komentář od {$username} <RelativeTime></RelativeTime>
comments-featured-gotoConversation = Přejít na konverzaci
comments-featured-gotoConversation-label-with-username =
  .aria-label = Přejít na tento vybraný komentář od uživatele { $username } v hlavním proudu komentářů
comments-featured-gotoConversation-label-without-username =
  .aria-label = Přejít na tento vybraný komentář v hlavním proudu komentářů
comments-featured-replies = Odpovědi

## Záložka profilu

profile-myCommentsTab = Moje komentáře
profile-myCommentsTab-comments = Moje komentáře
profile-accountTab = Účet
profile-preferencesTab = Nastavení

### Biografie
profile-bio-title = Biografie
profile-bio-description =
  Napište biografii, která bude veřejně zobrazena na vašem komentářovém profilu.
  Musí mít méně než 100 znaků.
profile-bio-remove = Odebrat
profile-bio-update = Aktualizovat
profile-bio-success = Vaše biografie byla úspěšně aktualizována.
profile-bio-removed = Vaše biografie byla odstraněna.


### Smazání účtu

profile-accountDeletion-deletionDesc =
  Váš účet je naplánován ke smazání dne { $date }.
profile-accountDeletion-cancelDeletion =
  Zrušit požadavek na smazání účtu
profile-accountDeletion-cancelAccountDeletion =
  Zrušit smazání účtu

### Historie komentářů
profile-commentHistory-section =
  .aria-label = Historie komentářů
profile-historyComment-commentLabel =
  Komentář <RelativeTime></RelativeTime> k článku { $storyTitle }
profile-historyComment-viewConversation = Zobrazit konverzaci
profile-historyComment-replies = Odpovědi {$replyCount}
profile-historyComment-commentHistory = Historie komentářů
profile-historyComment-story = Článek: {$title}
profile-historyComment-comment-on = Komentář k:
profile-profileQuery-errorLoadingProfile = Chyba při načítání profilu
profile-profileQuery-storyNotFound = Článek nebyl nalezen
profile-commentHistory-loadMore = Načíst více
profile-commentHistory-empty = Nemáte žádné komentáře
profile-commentHistory-empty-subheading = Zde se zobrazí historie vašich komentářů

profile-commentHistory-archived-thisIsAllYourComments =
  Toto jsou všechny vaše komentáře za posledních { $value } { $unit ->
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
      *[other] dnů
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
  }. Pro zobrazení zbytku vašich komentářů nás prosím kontaktujte.

### Nastavení

profile-preferences-mediaPreferences = Nastavení médií
profile-preferences-mediaPreferences-alwaysShow = Vždy zobrazit GIFy, Tweety, YouTube atd.
profile-preferences-mediaPreferences-thisMayMake = To může způsobit pomalejší načítání komentářů
profile-preferences-mediaPreferences-update = Aktualizovat
profile-preferences-mediaPreferences-preferencesUpdated =
  Vaše nastavení médií bylo aktualizováno

### Účet
profile-account-ignoredCommenters = Ignorovaní komentátoři
profile-account-ignoredCommenters-description =
  Můžete ignorovat ostatní komentátory kliknutím na jejich uživatelské
  jméno a výběrem možnosti Ignorovat. Když někoho ignorujete, všechny
  jeho komentáře budou před vámi skryty. Komentátoři, které ignorujete,
  budou stále moci vidět vaše komentáře.
profile-account-ignoredCommenters-empty = Momentálně nikoho neignorujete
profile-account-ignoredCommenters-stopIgnoring = Přestat ignorovat
profile-account-ignoredCommenters-youAreNoLonger =
  Již neignorujete
profile-account-ignoredCommenters-manage = Spravovat
  .aria-label = Spravovat ignorované komentátory
profile-account-ignoredCommenters-cancel = Zrušit
profile-account-ignoredCommenters-close = Zavřít

profile-account-changePassword-cancel = Zrušit
profile-account-changePassword = Změnit heslo
profile-account-changePassword-oldPassword = Staré heslo
profile-account-changePassword-forgotPassword = Zapomněli jste heslo?
profile-account-changePassword-newPassword = Nové heslo
profile-account-changePassword-button = Změnit heslo
profile-account-changePassword-updated =
  Vaše heslo bylo aktualizováno
profile-account-changePassword-password = Heslo

profile-account-download-comments-title = Stáhnout historii mých komentářů
profile-account-download-comments-description =
  Obdržíte e-mail s odkazem pro stažení historie vašich komentářů.
  Můžete podat <strong>jeden požadavek na stažení každých 14 dní.</strong>
profile-account-download-comments-request =
  Vyžádat historii komentářů
profile-account-download-comments-request-icon =
  .title = Vyžádat historii komentářů
profile-account-download-comments-recentRequest =
  Váš poslední požadavek: { $timeStamp }
profile-account-download-comments-yourMostRecentRequest =
  Váš poslední požadavek byl v posledních 14 dnech. Můžete
  znovu požádat o stažení komentářů dne: { $timeStamp }
profile-account-download-comments-requested =
  Požadavek odeslán. Další požadavek můžete odeslat za { framework-timeago-time }.
profile-account-download-comments-requestSubmitted =
  Váš požadavek byl úspěšně odeslán. Můžete znovu požádat
  o stažení historie komentářů za { framework-timeago-time }.
profile-account-download-comments-error =
  Nepodařilo se nám dokončit váš požadavek na stažení.
profile-account-download-comments-request-button = Vyžádat

## Smazání účtu

profile-account-deleteAccount-title = Smazat můj účet
profile-account-deleteAccount-deleteMyAccount = Smazat můj účet
profile-account-deleteAccount-description =
  Smazání vašeho účtu trvale odstraní váš profil a smaže
  všechny vaše komentáře z tohoto webu.
profile-account-deleteAccount-requestDelete = Požádat o smazání účtu

profile-account-deleteAccount-cancelDelete-description =
  Již jste odeslali požadavek na smazání vašeho účtu.
  Váš účet bude smazán dne { $date }.
  Požadavek můžete zrušit do tohoto data.
profile-account-deleteAccount-cancelDelete = Zrušit požadavek na smazání účtu

profile-account-deleteAccount-request = Vyžádat
profile-account-deleteAccount-cancel = Zrušit
profile-account-deleteAccount-pages-deleteButton = Smazat můj účet
profile-account-deleteAccount-pages-cancel = Zrušit
profile-account-deleteAccount-pages-proceed = Pokračovat
profile-account-deleteAccount-pages-done = Hotovo
profile-account-deleteAccount-pages-phrase =
  .aria-label = Fráze

profile-account-deleteAccount-pages-sharedHeader = Smazat můj účet

profile-account-deleteAccount-pages-descriptionHeader = Smazat můj účet?
profile-account-deleteAccount-pages-descriptionText =
  Pokoušíte se smazat svůj účet. To znamená:
profile-account-deleteAccount-pages-allCommentsRemoved =
  Všechny vaše komentáře budou odstraněny z tohoto webu
profile-account-deleteAccount-pages-allCommentsDeleted =
  Všechny vaše komentáře budou smazány z naší databáze
profile-account-deleteAccount-pages-emailRemoved =
  Vaše e-mailová adresa bude odstraněna z našeho systému

profile-account-deleteAccount-pages-whenHeader = Smazat můj účet: Kdy?
profile-account-deleteAccount-pages-whenSubHeader = Kdy?
profile-account-deleteAccount-pages-whenSec1Header =
  Kdy bude můj účet smazán?
profile-account-deleteAccount-pages-whenSec1Content =
  Váš účet bude smazán 24 hodin po odeslání vašeho požadavku.
profile-account-deleteAccount-pages-whenSec2Header =
  Mohu stále psát komentáře, dokud nebude můj účet smazán?
profile-account-deleteAccount-pages-whenSec2Content =
  Ne. Jakmile jste požádali o smazání účtu, nemůžete již psát komentáře,
  odpovídat na komentáře ani vybírat reakce.

profile-account-deleteAccount-pages-downloadCommentHeader = Stáhnout moje komentáře?
profile-account-deleteAccount-pages-downloadSubHeader = Stáhnout moje komentáře
profile-account-deleteAccount-pages-downloadCommentsDesc =
  Před smazáním vašeho účtu doporučujeme stáhnout si historii
  komentářů pro vaše záznamy. Po smazání účtu nebudete moci
  požádat o historii komentářů.
profile-account-deleteAccount-pages-downloadCommentsPath =
  Můj profil > Stáhnout historii mých komentářů

profile-account-deleteAccount-pages-confirmHeader = Potvrdit smazání účtu?
profile-account-deleteAccount-pages-confirmSubHeader = Jste si jistí?
profile-account-deleteAccount-pages-confirmDescHeader =
  Opravdu chcete smazat svůj účet?
profile-account-deleteAccount-confirmDescContent =
  Pro potvrzení, že chcete smazat svůj účet, zadejte prosím následující
  frázi do textového pole níže:
profile-account-deleteAccount-pages-confirmPhraseLabel =
  Pro potvrzení zadejte frázi níže:
profile-account-deleteAccount-pages-confirmPasswordLabel =
  Zadejte své heslo:

profile-account-deleteAccount-pages-completeHeader = Požadavek na smazání účtu odeslán
profile-account-deleteAccount-pages-completeSubHeader = Požadavek odeslán
profile-account-deleteAccount-pages-completeDescript =
  Váš požadavek byl odeslán a potvrzení bylo zasláno na e-mailovou
  adresu spojenou s vaším účtem.
profile-account-deleteAccount-pages-completeTimeHeader =
  Váš účet bude smazán dne: { $date }
profile-account-deleteAccount-pages-completeChangeYourMindHeader = Změnili jste názor?
profile-account-deleteAccount-pages-completeSignIntoYourAccount =
  Jednoduše se před tímto datem znovu přihlaste ke svému účtu a vyberte
  <strong>Zrušit požadavek na smazání účtu</strong>.
profile-account-deleteAccount-pages-completeTellUsWhy = Řekněte nám proč.
profile-account-deleteAccount-pages-completeWhyDeleteAccount =
  Rádi bychom věděli, proč jste se rozhodli smazat svůj účet. Pošlete nám
  zpětnou vazbu o našem komentářovém systému na { $email }.
profile-account-changePassword-edit = Upravit
profile-account-changePassword-change = Změnit


## Oznámení
profile-notificationsTab = Oznámení
profile-account-notifications-emailNotifications = E-mailová oznámení
profile-account-notifications-emailNotifications = E-mailová oznámení
profile-account-notifications-receiveWhen = Přijímat oznámení, když:
profile-account-notifications-onReply = Můj komentář obdrží odpověď
profile-account-notifications-onFeatured = Můj komentář je vybrán
profile-account-notifications-onStaffReplies = Člen redakce odpoví na můj komentář
profile-account-notifications-onModeration = Můj čekající komentář byl posouzen
profile-account-notifications-sendNotifications = Odesílat oznámení:
profile-account-notifications-sendNotifications-immediately = Okamžitě
profile-account-notifications-sendNotifications-daily = Denně
profile-account-notifications-sendNotifications-hourly = Každou hodinu
profile-account-notifications-updated = Vaše nastavení oznámení bylo aktualizováno
profile-account-notifications-button = Aktualizovat nastavení oznámení
profile-account-notifications-button-update = Aktualizovat

## Vyskakovací okno nahlášení komentáře
comments-reportPopover =
  .description = Dialog pro nahlašování komentářů
comments-reportPopover-reportThisComment = Nahlásit tento komentář
comments-reportPopover-whyAreYouReporting = Proč nahlašujete tento komentář?

comments-reportPopover-reasonOffensive = Tento komentář je urážlivý
comments-reportPopover-reasonAbusive = Tento komentátor se chová nevhodně
comments-reportPopover-reasonIDisagree = Nesouhlasím s tímto komentářem
comments-reportPopover-reasonSpam = Vypadá to jako reklama nebo marketing
comments-reportPopover-reasonOther = Jiný důvod

comments-reportPopover-additionalInformation =
  Další informace <optional>Volitelné</optional>
comments-reportPopover-pleaseLeaveAdditionalInformation =
  Zanechte prosím jakékoliv další informace, které mohou být užitečné pro naše moderátory.

comments-reportPopover-maxCharacters = Max. { $maxCharacters } znaků
comments-reportPopover-restrictToMaxCharacters = Omezte prosím své nahlášení na { $maxCharacters } znaků
comments-reportPopover-cancel = Zrušit
comments-reportPopover-submit = Odeslat

comments-reportPopover-thankYou = Děkujeme!
comments-reportPopover-receivedMessage =
  Obdrželi jsme vaši zprávu. Nahlášení od členů jako jste vy pomáhají udržovat komunitu bezpečnou.

comments-reportPopover-dismiss = Zavřít

## Vyskakovací okno nahlášení archivovaného komentáře

comments-archivedReportPopover-reportThisComment = Nahlásit tento komentář
comments-archivedReportPopover-doesThisComment =
  Porušuje tento komentář pravidla naší komunity? Je urážlivý nebo spam?
  Pošlete e-mail našemu moderátorskému týmu na <a>{ $orgName }</a> s odkazem na
  tento komentář a krátkým vysvětlením.
comments-archivedReportPopover-needALink =
  Potřebujete odkaz na tento komentář?
comments-archivedReportPopover-copyLink = Kopírovat odkaz

comments-archivedReportPopover-emailSubject = Nahlásit komentář
comments-archivedReportPopover-emailBody =
  Rád(a) bych nahlásil(a) následující komentář:
  %0A
  { $permalinkURL }
  %0A
  %0A
  Z níže uvedených důvodů:

## Stav odeslání
comments-submitStatus-dismiss = Zavřít
comments-submitStatus-submittedAndWillBeReviewed =
  Váš komentář byl odeslán a bude posouzen moderátorem
comments-submitStatus-submittedAndRejected =
  Tento komentář byl zamítnut za porušení našich pravidel

# Nastavení
configure-configureQuery-errorLoadingProfile = Chyba při načítání nastavení
configure-configureQuery-storyNotFound = Článek nebyl nalezen

## Archiv
configure-archived-title = Tento stream komentářů byl archivován
configure-archived-onArchivedStream =
  V archivovaných streamech nelze odesílat nové komentáře, reakce
  ani nahlášení. Komentáře také nelze moderovat.
configure-archived-toAllowTheseActions =
  Chcete-li tyto akce povolit, odarchivujte stream.
configure-archived-unarchiveStream = Odarchivovat stream

## Změna uživatelského jména
profile-changeUsername-username = Uživatelské jméno
profile-changeUsername-success = Vaše uživatelské jméno bylo úspěšně aktualizováno
profile-changeUsername-edit = Upravit
profile-changeUsername-change = Změnit
profile-changeUsername-heading = Upravit uživatelské jméno
profile-changeUsername-heading-changeYourUsername = Změnit uživatelské jméno
profile-changeUsername-desc = Změňte uživatelské jméno, které se bude zobrazovat u všech vašich minulých i budoucích komentářů. <strong>Uživatelské jméno lze změnit jednou za { framework-timeago-time }.</strong>
profile-changeUsername-desc-text = Změňte uživatelské jméno, které se bude zobrazovat u všech vašich minulých i budoucích komentářů. Uživatelské jméno lze změnit jednou za { framework-timeago-time }.
profile-changeUsername-current = Současné uživatelské jméno
profile-changeUsername-newUsername-label = Nové uživatelské jméno
profile-changeUsername-confirmNewUsername-label = Potvrdit nové uživatelské jméno
profile-changeUsername-cancel = Zrušit
profile-changeUsername-save = Uložit
profile-changeUsername-saveChanges = Uložit změny
profile-changeUsername-recentChange = Vaše uživatelské jméno bylo změněno v poslední době. Uživatelské jméno můžete znovu změnit dne { $nextUpdate }.
profile-changeUsername-youChangedYourUsernameWithin =
  Změnili jste své uživatelské jméno v posledních { framework-timeago-time }. Uživatelské jméno můžete znovu změnit dne: { $nextUpdate }.
profile-changeUsername-close = Zavřít

## Záložka diskuzí

discussions-mostActiveDiscussions = Nejaktivnější diskuze
discussions-mostActiveDiscussions-subhead = Řazeno podle nejvíce komentářů za posledních 24 hodin na { $siteName }
discussions-mostActiveDiscussions-empty = Nezúčastnili jste se žádných diskuzí
discussions-myOngoingDiscussions = Moje probíhající diskuze
discussions-myOngoingDiscussions-subhead = Kde jste komentovali napříč { $orgName }
discussions-viewFullHistory = Zobrazit celou historii komentářů
discussions-discussionsQuery-errorLoadingProfile = Chyba při načítání profilu
discussions-discussionsQuery-storyNotFound = Článek nebyl nalezen

## Stream komentářů
configure-stream-title =
configure-stream-title-configureThisStream =
  Nastavit tento stream
configure-stream-apply =
configure-stream-update = Aktualizovat
configure-stream-streamHasBeenUpdated =
  Tento stream byl aktualizován

configure-premod-title =
configure-premod-premoderateAllComments = Předmoderovat všechny komentáře
configure-premod-description =
  Moderátoři musí schválit každý komentář před jeho zveřejněním v tomto článku.

configure-premodLink-title =
configure-premodLink-commentsContainingLinks =
  Předmoderovat komentáře obsahující odkazy
configure-premodLink-description =
  Moderátoři musí schválit každý komentář obsahující odkaz před jeho zveřejněním v tomto článku.

configure-messageBox-title =
configure-addMessage-title =
  Přidat zprávu nebo otázku
configure-messageBox-description =
configure-addMessage-description =
  Přidejte zprávu na začátek pole pro komentáře pro vaše čtenáře. Použijte
  ji k navržení tématu, položení otázky nebo oznámení souvisejícího
  s tímto článkem.
configure-addMessage-addMessage = Přidat zprávu
configure-addMessage-removed = Zpráva byla odstraněna
config-addMessage-messageHasBeenAdded =
  Zpráva byla přidána do pole pro komentáře
configure-addMessage-remove = Odebrat
configure-addMessage-submitUpdate = Aktualizovat
configure-addMessage-cancel = Zrušit
configure-addMessage-submitAdd = Přidat zprávu

configure-messageBox-preview = Náhled
configure-messageBox-selectAnIcon = Vyberte ikonu
configure-messageBox-iconConversation = Konverzace
configure-messageBox-iconDate = Datum
configure-messageBox-iconHelp = Nápověda
configure-messageBox-iconWarning = Varování
configure-messageBox-iconChatBubble = Bublina chatu
configure-messageBox-noIcon = Bez ikony
configure-messageBox-writeAMessage = Napsat zprávu

configure-closeStream-title =
configure-closeStream-closeCommentStream =
  Uzavřít stream komentářů
configure-closeStream-description =
  Tento stream komentářů je momentálně otevřený. Uzavřením tohoto
  streamu komentářů nebudou moci být odesílány nové komentáře a všechny
  dříve odeslané komentáře budou stále zobrazeny.
configure-closeStream-closeStream = Uzavřít stream
configure-closeStream-theStreamIsNowOpen = Stream je nyní otevřený

configure-openStream-title = Otevřít stream
configure-openStream-description =
  Tento stream komentářů je momentálně uzavřený. Otevřením tohoto
  streamu komentářů mohou být odesílány a zobrazovány nové komentáře.
configure-openStream-openStream = Otevřít stream
configure-openStream-theStreamIsNowClosed = Stream je nyní uzavřený

configure-moderateThisStream =

qa-experimentalTag-tooltip-content =
  Formát Otázky a odpovědi je momentálně v aktivním vývoji. Kontaktujte
  nás prosím s jakoukoli zpětnou vazbou nebo požadavky.

configure-enableQA-title =
configure-enableQA-switchToQA =
  Přepnout na formát Otázky a odpovědi
configure-enableQA-description =
  Formát Otázky a odpovědi umožňuje členům komunity odesílat otázky
  vybraným expertům k zodpovězení.
configure-enableQA-enableQA = Přepnout na Otázky a odpovědi
configure-enableQA-streamIsNowComments =
  Tento stream je nyní ve formátu komentářů

configure-disableQA-title = Nastavit tyto Otázky a odpovědi
configure-disableQA-description =
  Formát Otázky a odpovědi umožňuje členům komunity odesílat otázky
  vybraným expertům k zodpovězení.
configure-disableQA-disableQA = Přepnout na komentáře
configure-disableQA-streamIsNowQA =
  Tento stream je nyní ve formátu Otázky a odpovědi

configure-experts-title = Přidat experta
configure-experts-filter-searchField =
  .placeholder = Hledat podle e-mailu nebo uživatelského jména
  .aria-label = Hledat podle e-mailu nebo uživatelského jména
configure-experts-filter-searchButton =
  .aria-label = Hledat
configure-experts-filter-description =
  Přidá odznak experta ke komentářům registrovaných uživatelů, pouze
  na této stránce. Noví uživatelé se musí nejprve zaregistrovat a otevřít
  komentáře na stránce, aby si vytvořili účet.
configure-experts-search-none-found = Nebyli nalezeni žádní uživatelé s tímto e-mailem nebo uživatelským jménem
configure-experts-
configure-experts-remove-button = Odebrat
configure-experts-load-more = Načíst více
configure-experts-none-yet = Momentálně nejsou pro tyto Otázky a odpovědi žádní experti.
configure-experts-search-title = Hledat experta
configure-experts-assigned-title = Experti
configure-experts-noLongerAnExpert = již není expertem
comments-tombstone-ignore-user = Tento komentář je skrytý, protože jste tohoto uživatele ignorovali.
comments-tombstone-showComment = Zobrazit komentář
comments-tombstone-deleted =
  Tento komentář již není dostupný. Komentátor smazal svůj účet.
comments-tombstone-rejected =
  Tento komentář byl odstraněn moderátorem za porušení pravidel naší komunity.

suspendInfo-heading =
suspendInfo-heading-yourAccountHasBeen =
  Váš účet byl dočasně pozastaven pro komentování
suspendInfo-info =
suspendInfo-description-inAccordanceWith =
  V souladu s pravidly komunity { $organization } byl váš účet
  dočasně pozastaven. Během pozastavení nebudete moci komentovat,
  používat reakce ani nahlašovat komentáře.
suspendInfo-until-pleaseRejoinThe =
  Připojte se prosím zpět ke konverzaci dne { $until }

warning-heading = Váš účet obdržel varování
warning-explanation =
  V souladu s pravidly naší komunity bylo vašemu účtu uděleno varování.
warning-instructions =
  Pro pokračování v diskuzích stiskněte prosím tlačítko "Vzít na vědomí" níže.
warning-acknowledge = Vzít na vědomí

warning-notice = Váš účet obdržel varování. Pro pokračování v účasti prosím <a>zkontrolujte varovnou zprávu</a>.

modMessage-heading = Vašemu účtu byla zaslána zpráva od moderátora
modMessage-acknowledge = Vzít na vědomí

profile-changeEmail-unverified = (Neověřeno)
profile-changeEmail-current = (aktuální)
profile-changeEmail-edit = Upravit
profile-changeEmail-change = Změnit
profile-changeEmail-please-verify = Ověřte svou e-mailovou adresu
profile-changeEmail-please-verify-details =
  Na adresu { $email } byl odeslán e-mail pro ověření vašeho účtu.
  Musíte ověřit svou novou e-mailovou adresu, než ji bude možné použít
  pro přihlášení k vašemu účtu nebo pro příjem oznámení.
profile-changeEmail-resend = Znovu odeslat ověření
profile-changeEmail-heading = Upravit e-mailovou adresu
profile-changeEmail-changeYourEmailAddress =
  Změnit e-mailovou adresu
profile-changeEmail-desc = Změňte e-mailovou adresu používanou pro přihlašování a pro příjem komunikace o vašem účtu.
profile-changeEmail-newEmail-label = Nová e-mailová adresa
profile-changeEmail-password = Heslo
profile-changeEmail-password-input =
  .placeholder = Heslo
profile-changeEmail-cancel = Zrušit
profile-changeEmail-submit = Uložit
profile-changeEmail-saveChanges = Uložit změny
profile-changeEmail-email = E-mail
profile-changeEmail-title = E-mailová adresa
profile-changeEmail-success = Váš e-mail byl úspěšně aktualizován

## Hodnocení a recenze

ratingsAndReviews-postCommentForm-section =
  .aria-label = Odeslat recenzi nebo položit otázku

ratingsAndReviews-reviewsTab = Recenze
ratingsAndReviews-questionsTab = Otázky
ratingsAndReviews-noReviewsAtAll = Nejsou žádné recenze.
ratingsAndReviews-noQuestionsAtAll = Nejsou žádné otázky.
ratingsAndReviews-noReviewsYet = Zatím nejsou žádné recenze. Proč nenapíšete první?
ratingsAndReviews-noQuestionsYet = Zatím nejsou žádné otázky. Proč nepoložíte první?
ratingsAndReviews-selectARating = Vyberte hodnocení
ratingsAndReviews-youRatedThis = Ohodnotili jste toto
ratingsAndReviews-showReview = Zobrazit recenzi
  .title = { ratingsAndReviews-showReview }
ratingsAndReviews-rateAndReview = Ohodnotit a napsat recenzi
ratingsAndReviews-askAQuestion = Položit otázku
ratingsAndReviews-basedOnRatings = { $count ->
  [0] Zatím žádná hodnocení
  [1] Na základě 1 hodnocení
  *[other] Na základě { SHORT_NUMBER($count) } hodnocení
}

ratingsAndReviews-allReviewsFilter = Všechny recenze
ratingsAndReviews-starReviewsFilter = { $rating ->
  [1] 1 hvězda
  *[other] { $rating } hvězd
}

comments-addAReviewForm-rteLabel = Přidat recenzi (volitelné)

comments-addAReviewForm-rte =
  .placeholder = { comments-addAReviewForm-rteLabel }

comments-addAReviewFormFake-rte =
  .placeholder = { comments-addAReviewForm-rteLabel }

stream-footer-links-top-of-article = Začátek článku
  .title = Přejít na začátek článku
stream-footer-links-top-of-comments = Začátek komentářů
  .title = Přejít na začátek komentářů
stream-footer-links-profile = Profil a odpovědi
  .title = Přejít na profil a odpovědi
stream-footer-links-discussions = Další diskuze
  .title = Přejít na další diskuze
stream-footer-navigation =
  .aria-label = Patička komentářů
