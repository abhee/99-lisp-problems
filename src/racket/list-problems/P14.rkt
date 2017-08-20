#lang racket

;; Duplicate the elements of a list.

;; Example: (dupli '(a b c d e f)) => '(a a b b c c d d e e f f)

(define (dupli lst)
  (if (empty? lst)
      '()
      (let ((head (first lst))
            (tail (rest lst)))
        (if (list? head)
            (append (list head head) (dupli tail))
            (cons head (cons head (dupli tail)))))))



; Tests
(equal? (dupli '(a b c d e f)) '(a a b b c c d d e e f f))
(equal? (dupli '((a b) (c d) e)) '((a b) (a b) (c d) (c d) e e))
(equal? (dupli '()) '())