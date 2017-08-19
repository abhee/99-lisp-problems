#lang racket

;; Generate a random permutation of the elements of a list.
;; Example: (rnd-permu '(a b c d e f)) => '(a f e b c d)

(define (remove-at lst pos)
  (cond
    [(empty? lst) '()]
    [(= pos 0) lst]
    [(= pos 1) (rest lst)]
    [else (cons (first lst) (remove-at (rest lst) (- pos 1)))]))

(define (rnd-select lst n)
  (if (or (empty? lst) (= n 0))
      '()
      (let
          ((pos (random 1 (+ (length lst) 1))))
        (cons (list-ref lst (- pos 1)) (rnd-select (remove-at lst pos) (- n 1))))))

(define (rnd-permu lst)
  (rnd-select lst (length lst)))