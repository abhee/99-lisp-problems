#lang racket

;; Split a list into two parts; the length of the first part is given.
;; Do not use any predefined predicates.

;; Example: (split '(a b c d e f g h i k) 3) => '((a b c) (d e f g h i k))

(define (split lst pos)
  (define (pick-n-items lst n)
    (if (or (empty? lst) (= n 0))
        '()
        (cons (first lst) (pick-n-items (rest lst) (- n 1)))))
   
  (define (remove-n-items lst n)
    (cond
      [(empty? lst) '()]
      [(= n 0) lst]
      [else (remove-n-items (rest lst) (- n 1))]))

  (if (empty? lst)
      '()
      (append (list (pick-n-items lst pos)) (list (remove-n-items lst pos)))))
        


;; Tests
(equal? (split '(a b c d e f g h i k) 3) '((a b c) (d e f g h i k)))
(equal? (split '(a b c d e f g h i k) 1) '((a) (b c d e f g h i k)))
(equal? (split '(a b c d e f g h i j) 10) '((a b c d e f g h i j) ()))
(equal? (split '() 3) '())
