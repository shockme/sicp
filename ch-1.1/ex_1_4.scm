#lang scheme

;; Exercise 1.4

;; Observe that our model of evaluation allows for com-
;; binations whose operators are compound expressions. Use this
;; observation to describe the behavior of the following procedure:
;; (define (a-plus-abs-b a b)
;;   ((if (> b 0) + -) a b))

;; Using applicative-order evaluation the compound expression
;; (if (> b 0) + -) is evaluated as follows:
;;   - if b is strictly positive the result of the expression is +
;;   - if b is negative or 0 the result of the expression is -
;; In the first case the compound expression becomes (+ a b). Simple
;; enough.
;; In the second case the compound expression becomes (- a b).
;; Considering that b is negative or 0 we can rewrite it as
;; (- a (- (abs b)))
