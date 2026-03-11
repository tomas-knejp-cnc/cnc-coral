### Lokalizace pro framework.
### Všechny klíče musí začínat `framework`, protože tento soubor je sdílen
### mezi různými cíli.

## Short Number

# Implementace založená na Unicode Short Number vzorech
# http://cldr.unicode.org/translation/number-patterns#TOC-Short-Numbers

framework-shortNumber-1000 = 0,0 tis.
framework-shortNumber-10000 = 00 tis.
framework-shortNumber-100000 = 000 tis.
framework-shortNumber-1000000 = 0,0 mil.
framework-shortNumber-10000000 = 00 mil.
framework-shortNumber-100000000 = 000 mil.
framework-shortNumber-1000000000 = 0,0 mld.

## Validation

framework-validation-required = Toto pole je povinné.
framework-validation-tooShort = Zadejte prosím alespoň {$minLength} znaků.
framework-validation-tooLong = Zadejte prosím maximálně {$maxLength} znaků.
framework-validation-usernameTooShort = Uživatelské jméno musí obsahovat alespoň {$minLength} znaků.
framework-validation-usernameTooLong = Uživatelská jména nemohou být delší než {$maxLength} znaků.
framework-validation-invalidCharacters = Neplatné znaky. Zkuste to znovu.
framework-validation-invalidEmail = Zadejte prosím platnou e-mailovou adresu.
framework-validation-passwordTooShort = Heslo musí obsahovat alespoň {$minLength} znaků.
framework-validation-passwordsDoNotMatch = Hesla se neshodují. Zkuste to znovu.
framework-validation-invalidURL = Neplatná URL adresa
framework-validation-emailsDoNotMatch = E-mailové adresy se neshodují. Zkuste to znovu.
framework-validation-notAWholeNumberBetween = Zadejte prosím celé číslo mezi { $min } a { $max }.
framework-validation-notAWholeNumberGreaterThan = Zadejte prosím celé číslo větší než { $x }
framework-validation-notAWholeNumberGreaterThanOrEqual = Zadejte prosím celé číslo větší nebo rovné { $x }
framework-validation-usernamesDoNotMatch = Uživatelská jména se neshodují. Zkuste to znovu.
framework-validation-deleteConfirmationInvalid = Nesprávné potvrzení. Zkuste to znovu.
framework-validation-invalidWebhookEndpointEventSelection = Vyberte alespoň jednu událost k příjmu.
framework-validation-media-url-invalid = Zadejte prosím platnou URL adresu obrázku (.png, .jpg nebo .gif)
framework-validation-invalidEmailDomain = Neplatný formát e-mailové domény. Použijte formát „email.cz"
framework-validation-invalidExternalProfileURL = Všechny vzory URL externích profilů musí obsahovat buď $USER_NAME nebo $USER_ID.

framework-timeago-just-now = Právě teď

framework-timeago-time =
  { $value } { $unit ->
    [second] { $value ->
      [1] sekunda
      [2] sekundy
      [3] sekundy
      [4] sekundy
      *[other] sekund
    }
    [minute] { $value ->
      [1] minuta
      [2] minuty
      [3] minuty
      [4] minuty
      *[other] minut
    }
    [hour] { $value ->
      [1] hodina
      [2] hodiny
      [3] hodiny
      [4] hodiny
      *[other] hodin
    }
    [day] { $value ->
      [1] den
      [2] dny
      [3] dny
      [4] dny
      *[other] dní
    }
    [week] { $value ->
      [1] týden
      [2] týdny
      [3] týdny
      [4] týdny
      *[other] týdnů
    }
    [month] { $value ->
      [1] měsíc
      [2] měsíce
      [3] měsíce
      [4] měsíce
      *[other] měsíců
    }
    [year] { $value ->
      [1] rok
      [2] roky
      [3] roky
      [4] roky
      *[other] let
    }
    *[other] neznámá jednotka
  }

framework-timeago =
  { $suffix ->
    [ago] před {framework-timeago-time}
    *[noSuffix] {framework-timeago-time}
  }

## Components

### Copy Button
framework-copyButton-copy = Kopírovat
framework-copyButton-copied = Zkopírováno

### Password Field
framework-passwordField =
  .showPasswordTitle = Zobrazit heslo
  .hidePasswordTitle = Skrýt heslo

### Markdown Editor
framework-markdownEditor-bold = Tučné
framework-markdownEditor-italic = Kurzíva
framework-markdownEditor-titleSubtitleHeading = Nadpis, podnadpis, záhlaví
framework-markdownEditor-quote = Citát
framework-markdownEditor-genericList = Obecný seznam
framework-markdownEditor-numberedList = Číslovaný seznam
framework-markdownEditor-createLink = Vytvořit odkaz
framework-markdownEditor-insertImage = Vložit obrázek
framework-markdownEditor-togglePreview = Přepnout náhled
framework-markdownEditor-toggleSideBySide = Přepnout zobrazení vedle sebe
framework-markdownEditor-toggleFullscreen = Přepnout celou obrazovku
framework-markdownEditor-markdownGuide = Průvodce Markdownem

### Duration Field

framework-durationField-unit =
  { $unit ->
    [second] { $value ->
      [1] sekunda
      [2] sekundy
      [3] sekundy
      [4] sekundy
      *[other] sekund
    }
    [minute] { $value ->
      [1] minuta
      [2] minuty
      [3] minuty
      [4] minuty
      *[other] minut
    }
    [hour] { $value ->
      [1] hodina
      [2] hodiny
      [3] hodiny
      [4] hodiny
      *[other] hodin
    }
    [day] { $value ->
      [1] den
      [2] dny
      [3] dny
      [4] dny
      *[other] dní
    }
    [week] { $value ->
      [1] týden
      [2] týdny
      [3] týdny
      [4] týdny
      *[other] týdnů
    }
    *[other] neznámá jednotka
  }

framework-starRating =
  .aria-label = { $value ->
    [1] 1 hvězda
    [2] { $value } hvězdy
    [3] { $value } hvězdy
    [4] { $value } hvězdy
    *[other] { $value } hvězd
  }

### Relay Network Request Error

framework-error-relayNetworkRequestError-anUnexpectedNetworkError =
  Došlo k neočekávané chybě sítě, zkuste to prosím znovu později.
framework-error-relayNetworkRequestError-code = Kód
