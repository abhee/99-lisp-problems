#lang racket

;; Decode a run-length encoded list.
;; Example: (decode ((4 a) b (2 c) (2 a) d (4 e))) => '(a a a a b c c a a d e e e e)

(define (decode lst)
  (define (repeat-elt elt count)
    (if (= count 0)
        '()
        (cons elt (repeat-elt elt (- count 1)))))


  (if (empty? lst)
      '()
      (let
          ((head (first lst))
           (tail (rest lst)))
        
        (if (list? head)
            (append (repeat-elt (first (rest head)) (first head)) (decode tail))
            (cons head (decode tail))))))      

; Tests
(equal? (decode '((4 a) b (2 c) (2 a) d (4 e))) '(a a a a b c c a a d e e e e))
(equal? (decode '(a b c d (10 e))) '(a b c d e e e e e e e e e e))
(equal? (decode '(a b c d e)) '(a b c d e))
