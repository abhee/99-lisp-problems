#lang racket

;; Extract a slice from a list.
;; Example: (slice '(a b c d e f g h i k) 3 7) => '(c d e f g)

(define (slice lst i k)
  (define (slice-rec lst j)
    (if (empty? lst)
        '()
        (if (and (>= j i) (<= j k))
            (cons (first lst) (slice-rec (rest lst) (+ j 1)))
            (slice-rec (rest lst) (+ j 1)))))

  (slice-rec lst 1))


;; Tests
(equal? (slice '(a b c d e f g h i k) 3 7) '(c d e f g))
(equal? (slice '(a b c d e f g h i k) 1 1) '(a))
(equal? (slice '() 1 5) '())