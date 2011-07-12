#lang scheme

;; Exercise 1.2

(/ (+ 5
      4
      (- 2
         (- 3
            (+ 6
               (/ 4 3)))))
   (* 3
      (- 6 2)
      (- 2 7)))

;; => -23/90

;; Good exercise for indenting properly. Even though I knew how to
;; indent properly in theory, this helped to form procedural memory.
