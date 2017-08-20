#lang racket

;; Replicate the elements of a list a given number of times.

;; Example: (repli '(a b c) 3) => '(a a a b b b c c c)

(define (repeat it num-times)
  (if (or (empty? it) (= num-times 0))
      '()
      (if (list? it)
          (append (list it) (repeat it (- num-times 1)))
          (cons it (repeat it (- num-times 1))))))

(define (repli lst n)
  (if (empty? lst)
      '()
      (append (repeat (first lst) n) (repli (rest lst) n))))


; Tests
(equal? (repli '(a b c) 3) '(a a a b b b c c c))
(equal? (repli '((a b) (c d) e) 2) '((a b) (a b) (c d) (c d) e e))
(equal? (repli '() 10) '())