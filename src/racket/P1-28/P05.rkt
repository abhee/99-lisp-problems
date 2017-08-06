#lang racket
;; Question: Reverse a list

(define (reverse lst)
  (if (empty? lst)
      '()
      (append (reverse (rest lst)) (list (first lst)))))

;; Another solution
(define (reverse2 lst)
  (define (reverse-rec lst r)
    (if (empty? lst)
      r
      (reverse-rec (rest lst) (cons (first lst) r))))

  (reverse-rec lst '()))


;; Tests
(equal? (reverse '(a b c d e f g h)) '(h g f e d c b a))
(equal? (reverse '(123.56 a "spam" ("egg" 45))) '(("egg" 45) "spam" a 123.56))
(equal? (reverse '()) '())

(equal? (reverse2 '(a b c d e f g h)) '(h g f e d c b a))
(equal? (reverse2 '(123.56 a "spam" ("egg" 45))) '(("egg" 45) "spam" a 123.56))
(equal? (reverse2 '()) '())
