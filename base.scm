#lang racket
(display "Simple summing:\n")
(display (+ 137 349))
(newline)

(display "More complex calculations:\n")
(+ (* 3 5) (- 10 6))
(newline)

(display "Nested calculations:\n")
(display (
  + (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6)
  )
)
(newline)

(display "Variable assignment:\n")
(define radius 10)
(display (* 3.14159 (* radius radius)))
(newline)


(display "Function definition:\n")
(define (square x) (* x x))
(display (square 21))

(newline)