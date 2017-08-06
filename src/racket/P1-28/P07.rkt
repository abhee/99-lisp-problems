#lang racket

;; Problem: Flatten a nested list structure.
;; Example:
;; (my-flatten '(a (b (c d) e))) => '(a b c d e)

(define (my-flatten lst)
  (if (empty? lst)
      '()
      (let ((head (first lst))
            (tail (rest lst)))
        ; If head is a list, flatten it
        (if (list? head)
            (append (my-flatten head) (my-flatten tail))
            ; if head is not a list, cons it onto flattened tail
            (cons head (my-flatten tail))))))

; Tests
(equal? (my-flatten '(a (b (c d) e) (12 34) (456))) (flatten '(a (b (c d) e) (12 34) (456))))
(equal? (my-flatten '((a) (b) (c) (d))) (flatten '((a) (b) (c) (d))))
(equal? (my-flatten '()) (flatten '()))
(equal? (my-flatten '(a b c d e f g h)) (flatten '(a b c d e f g h)))





