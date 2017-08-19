#lang racket

;; Create a list containing all integers within a given range.
;; Example: (range 4 9) => '(4 5 6 7 8 9)

(define (range start end)
  (cond
    [(= start end) (list start)]
    [(> start end) (cons start (range (- start 1) end))]
    [else (cons start (range (+ start 1) end))]))


;; Tests
(equal? (range 4 9) '(4 5 6 7 8 9))
(equal? (range 9 4) '(9 8 7 6 5 4))
(equal? (range -10 5) '(-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5))
(equal? (range 0 4) '(0 1 2 3 4))
(equal? (range 4 0) '(4 3 2 1 0))