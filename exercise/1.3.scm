#lang racket

; Exercise 1.3:
; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
; https://sarabander.github.io/sicp/html/1_002e1.xhtml#Exercise-1_002e3

(define (squareSum a b)
  (+ (* a a) (* b b))
)

(define (sumBiggest a b c)
  (cond ((and (> a c) (> b c)) (squareSum a b)))
  (cond ((and (> b a) (> c a)) (squareSum b c)))
  (cond ((and (> a b) (> c b)) (squareSum a c)))
)
(sumBiggest 3 2 10)
