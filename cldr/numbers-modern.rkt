#lang racket/base

(require racket/contract/base
         racket/runtime-path
         cldr/core)

(provide/contract [currencies cldr-main/c]
                  [numbers    cldr-main/c])

(define (currencies loc)
  (get loc "currencies.json" `(main ,loc numbers currencies)))

(define (numbers loc)
  (get loc "numbers.json" `(main ,loc numbers)))

(define (get loc file path)
  (if (modern-locale? loc)
      (cldr-json ZIP-PATH PKG (build-path "main" loc file) path)
      (raise-locale-not-found loc PKG)))

(define PKG "cldr-numbers-modern")
(define-runtime-path ZIP-PATH "data/cldr-numbers-modern.zip")
