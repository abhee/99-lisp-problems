#lang racket

;; Question: Find the last but one box of a list.
;; Example: (my-but-last '(a b c d)) => (c d)

(define (my-but-last lst)
  (if (or (empty? lst) (empty? (rest (rest lst))))
      lst
      (my-but-last (rest lst))))


; Tests
(equal? (my-but-last '(1 2 3 4 5 6 7 8)) '(7 8))
(equal? (my-but-last '("hello" "world")) '("hello" "world"))
(equal? (my-but-last '()) '())