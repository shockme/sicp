#lang scheme

;; Exercise 1.5

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; (test 0 (p))

;; An interpreter using applicative-order evaluation would enter an
;; infinite loop because it would evaluate the application of
;; procedure p to pass the result of the evaluation as a parameter
;; to procedure test.

;; An interpreter using normal-order evaluation would return the
;; value 0 as it would not evaluate the procedure application of p
;; until needed, which it would not need to do as x is 0.
