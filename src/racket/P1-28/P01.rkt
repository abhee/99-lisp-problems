#lang racket
;; Question: Find the last box of a list.
;; Example: (my-last '(a b c d)) => (d)

(define (my-last lst)
  (if (or (empty? lst) (empty? (rest lst)))
      lst
      (my-last (rest lst))))

; Tests
(equal? (my-last '(1 2 3 4 5 6 7 8)) '(8))
(equal? (my-last '("hello" "world")) '("world"))
(equal? (my-last '()) '())