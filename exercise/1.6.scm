; Exercise 1.6:
;Alyssa P. Hacker doesn’t see why if needs to be provided as a special form. “Why can’t I just define it as an ordinary procedure in terms of cond?” she asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:
; https://sarabander.github.io/sicp/html/1_002e1.xhtml#Exercise-1_002e6

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0
Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
What happens when Alyssa attempts to use this to compute square roots? Explain.

;Answer:
;The new-if procedure is not a special form, so it evaluates both the then-clause and the else-clause before applying the cond. This means that the recursive call to sqrt-iter will be evaluated before the cond is applied, which will result in an infinite loop.