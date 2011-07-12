#lang scheme

;; Exercise 1.3

(define (sum-of-squares-ottln a b c)
  (define (max x y) (if (< x y) y x))
  (define n1 (max a b))
  ;(define n2 (if (= (max b c) n1) (max a c) (max b c)))
  ; I didn't like the above solution for n2 because it felt too
  ; imperative. I also wanted to avoid introducing another procedure
  ; to determine the minimum of a and b.
  (define n2 (max (-(+ a b) n1 ) c))
  ; Here I'm determining the minimum of a and b by summing them up and
  ; then subtracting the maximum of a and b -- what's left is the
  ; minimum. I then determine the maximum of c and the minimum of a and
  ; b.
  (define (square n) (* n n))
  (+ (square n1) (square n2)))

(sum-of-squares-ottln 1 2 3)
(sum-of-squares-ottln 2 1 3)
(sum-of-squares-ottln 3 2 1)
(sum-of-squares-ottln 2 3 1)

;; => 13
;; Hmm, at first I defined n1 and n2 inside the procedure's
;; expression and it generated an error. It's amazing how things you
;; know don't work out quite the same.
