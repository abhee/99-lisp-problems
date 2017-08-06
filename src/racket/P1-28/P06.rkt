#lang racket

;; Problem: Find out whether a list is a palindrome.

(define (is-palindrome? lst)
  (equal? (reverse lst) lst))

; Tests
(equal? (is-palindrome? '(a b c d e f g)) #f)
(equal? (is-palindrome? '(m a l a y a l a m)) #t)