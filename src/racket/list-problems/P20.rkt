#lang racket

;; Remove the K'th element from a list.
;; Example: (remove-at '(a b c d e f) 3) => '(a b d e f)

(define (remove-at lst pos)
  (cond
    [(empty? lst) '()]
    [(= pos 0) lst]
    [(= pos 1) (rest lst)]
    [else (cons (first lst) (remove-at (rest lst) (- pos 1)))]))


;; Tests
(equal? (remove-at '(a b c d e f) 3) '(a b d e f))
(equal? (remove-at '(a b c d e f) 2) '(a c d e f))
(equal? (remove-at '(a b c d e f) 0) '(a b c d e f))
(equal? (remove-at '(a b c d e f) 7) '(a b c d e f))
(equal? (remove-at '() 3) '())
