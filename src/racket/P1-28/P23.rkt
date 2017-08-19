#lang racket

;; Extract a given number of randomly selected elements from a list. The selected items shall be returned in a list.
;; Example: (rnd-select '(a b c d e f g h) 3) => '(e d a)

(define (nth lst n)
  (if (empty? lst)
      '()
      (if (= n 1)
          (first lst)
          (nth (rest lst) (- n 1)))))

(define (remove-at lst pos)
  (cond
    [(empty? lst) '()]
    [(= pos 0) lst]
    [(= pos 1) (rest lst)]
    [else (cons (first lst) (remove-at (rest lst) (- pos 1)))]))

(define (rnd-select lst n)
  "This is a docstring"
  (if (or (empty? lst) (= n 0))
      '()
      (let
          ((pos (random 1 (length lst))))
        (cons (nth lst pos) (rnd-select (remove-at lst pos) (- n 1))))))
  
  




