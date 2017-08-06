#lang racket

;; Question: Find the K'th element of a list.
;; The first element in the list is number 1.
;;
;; Example: (element-at '(a b c d e) 3) => c

(define (element-at lst loc)
  (define (element-at-rec lst i)
    (if (= i 1)
        (first lst)
        (element-at-rec (rest lst) (- i 1))))

  (cond
    [(empty? lst) '()]
    [else (element-at-rec lst loc)]))



; Tests
(equal? (element-at '(a b c d e f g h i j k) 5) 'e)
(equal? (element-at '(a b c d e () g h) 6) '())
(equal? (element-at '() 12) '())