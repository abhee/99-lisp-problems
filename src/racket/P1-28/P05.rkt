#lang racket
;; Question: Reverse a list

(define (reverse lst)
  (if (empty? lst)
      '()
      (append (reverse (rest lst)) (list (first lst)))))


; Tests
(equal? (reverse '(a b c d e f g h)) '(h g f e d c b a))
(equal? (reverse '(123.56 a "spam" ("egg" 45))) '(("egg" 45) "spam" a 123.56))
(equal? (reverse '()) '())