#lang racket

;; Rotate a list N places to the left
;; Example:  (rotate '(a b c d e f g h) 3) => '(d e f g h a b c)


(define (rotate lst pos)
  (define (split lst pos)
    (append (list (take lst pos)) (list (drop lst pos))))

  (let
    ((pair
      (if (< pos 0)
          (split lst (+ (length lst) pos))
          (split lst pos))))
          
    (append (first (rest pair)) (first pair))))


;; Tests
(equal? (rotate '(a b c d e f g h) 3) '(d e f g h a b c))
(equal? (rotate '(a b c d e f g h) -2) '(g h a b c d e f))
