#lang racket

;; Remove the K'th element from a list.
;; Example: (insert-at '(a b c d e f) 3 'ALFA) => '(a b ALFA c d e f)

(define (insert-at stuff lst pos )
  (cond
    [(= pos 0) lst]
    [(or (= pos 1) (empty? lst)) (cons stuff lst)] 
    [else (cons (first lst) (insert-at stuff (rest lst) (- pos 1)))]))


;; Tests
(equal? (insert-at 'ALFA '(a b c d e f) 3) '(a b ALFA c d e f))
(equal? (insert-at 'z '(a b c d e f) 1) '(z a b c d e f))
(equal? (insert-at 'p '(a b c d e f) 0) '(a b c d e f))
(equal? (insert-at 'p '(a b c d e f) 6) '(a b c d e p f))
(equal? (insert-at 'p '(a b c d e f) 7) '(a b c d e f p))
(equal? (insert-at 'p '() 12) '(p))
