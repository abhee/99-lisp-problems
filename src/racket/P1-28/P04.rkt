#lang racket

;; Question: Find number of elements in a list

(define (length lst)
  (define (length-rec lst i)
    (if (empty? lst)
        i
        (length-rec (rest lst) (+ i 1))))

  (length-rec lst 0))



; Tests
(equal? (length '(a b c d e f g h)) 8)
(equal? (length '(123.56)) 1)
(equal? (length '()) 0)