#lang racket

;; Eliminate consecutive duplicates of list elements. If a list contains repeated elements they should be replaced with a single copy of the element.
;; The order of the elements should not be changed.
;; Example: (compress '(a a a a b c c a a d e e e e)) => '(a b c a d e)

(define (compress lst)
  (define (cmpr lst c)
    (if (empty? lst)
        '()
        (let ((head (first lst))
              (tail (rest lst)))
          (if (equal? c head)
            (cmpr tail c)
            (cons head (cmpr tail head))))))

  (cons (first lst) (cmpr (rest lst) (first lst))))


; Tests
(equal? (compress '(a a a a b c c a a d e e e e)) '(a b c a d e))
(equal? (compress '((a a) (a a) z z b c c a a d e e e e)) '((a a) z b c a d e))