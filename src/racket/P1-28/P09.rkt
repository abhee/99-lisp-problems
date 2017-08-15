#lang racket

;; Pack consecutive duplicates of list elements into sublists.
;; If a list contains repeated elements they should be placed in separate sublists.

;; Example: (pack '(a a a a b c c a a d e e e e)) => ((a a a a) (b) (c c) (a a) (d) (e e e e))

(define (pack lst)
  (if (empty? lst)
      '()
      (let ((head (first lst))
            (tail (rest list)))
        (if (equal? head (first tail))
            (cons head (pack tail))
            (
      

; Tests
(equal? (pack '(a a a a b c c a a d e e e e)) '((a a a a) (b) (c c) (a a) (d) (e e e e)))
(equal? (pack '(a b c d e)) '((a) (b) (c) (d) (e)))
