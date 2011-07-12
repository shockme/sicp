#lang scheme

;; Exercise 1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(new-if (= 2 3) 0 5)
;; => 5
(new-if (= 1 1) 0 5)
;; => 0

(define (sqrt-iter x guess)
  (define (good-enough? x y)
    (< (abs (- (* y y) x)) 0.001))
  (new-if (good-enough? x guess)
       guess
       (sqrt-iter x (/ (+ guess (/ x guess)) 2))))

(sqrt-iter 2 1)
;; This enters an infinite loop because new-if uses
;; applicative-order evaluation and so before the first application
;; of new-if all it's operands will be evaluated including
;;    (sqrt-iter x (/ (+ guess (/ x guess)) 2))
;; which causes a new application of sqrt-iter. Repeat ad nauseam.
;; The new-if procedure never gets to execute.
;; "if" in scheme is a special form and so it doesn't need all its
;; operands evaluated beforehand.
