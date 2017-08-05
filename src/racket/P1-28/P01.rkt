#lang racket
;; Question
;; Find the last box of a list.
;; Example:
;;   (my-last '(a b c d)) => (d)

(define (my-last lst)
  (if (empty? (rest lst))
      lst
      (my-last (rest lst))))
