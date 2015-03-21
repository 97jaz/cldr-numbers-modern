#lang scribble/manual

@(require scribble/eval
          (for-label racket/base
                     racket/runtime-path
                     cldr/core
                     cldr/numbers-modern
                     json))
@(define the-eval (make-base-eval))
@(the-eval '(require cldr/core
                     cldr/numbers-modern))

@title{CLDR Numbers for Modern Locales}
@author[@author+email["Jon Zeppieri" "zeppieri@gmail.com"]]

@margin-note{
@deftech{CLDR} is the @link["http://cldr.unicode.org/"]{Common Locale Data Repository}, a
database of localization information published by the Unicode Consortium.
}

The CLDR Numbers-Modern library is a Racket interface to the
@link["https://github.com/unicode-cldr/cldr-numbers-modern"]{cldr-numbers-modern} JSON
distribution published by the Unicode Consortium. 

See @(other-manual '(lib "cldr/scribblings/cldr-core.scrbl")) for more information.

@defmodule[cldr/numbers-modern]

@defproc[(currencies [locale string?]) jsexpr?]{
Returns raw data from @tt{currencies.json} for the given @racket[locale].
}

@defproc[(numbers [locale string?]) jsexpr?]{
Returns raw data from @tt{numbers.json} for the given @racket[locale].
}
