#lang racket

;; Drop every N'th element from a list.
;; Example: (drop '(a b c d e f g h i k) 3) => '(a b d e g h k)

(define (drop lst n)
  (define (drop-rec lst i)
    (if (empty? lst)
        '()
        (if (= (remainder i n) 0)
            (drop-rec (rest lst) (+ i 1))
            (cons (first lst) (drop-rec (rest lst) (+ i 1))))))

  (drop-rec lst 1))


;; Tests
(equal? (drop '(a b c d e f g h i k) 3) '(a b d e g h k))
(equal? (drop '(a b c d e f g h i k) 2) '(a c e g i))
(equal? (drop '(a b c d e) 1) '())
