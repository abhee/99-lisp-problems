#lang racket

;; Lotto: Draw N different random numbers from the set 1..M.
;; Example: (lotto-select 6 49) => '(23 1 17 33 21 37)


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

(define (range start end)
  (cond
    [(= start end) (list start)]
    [(> start end) (cons start (range (- start 1) end))]
    [else (cons start (range (+ start 1) end))]))


(define (lotto-select n m)
  (rnd-select (range 1 m) n))

