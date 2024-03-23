#lang racket
;Exercise 1.1:
;Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.
; https://sarabander.github.io/sicp/html/1_002e1.xhtml#Exercise-1_002e1

(display "10 - Should be 10 result: ") 10;
(display "(+ 5 3 4) - Should be 12 result: ") (+ 5 3 4);
(display "(- 9 1) - Should be 8 result: ") (- 9 1);
(display "(/ 6 2) - Should be 3 result: ") (/ 6 2);
(display "(+ (* 2 4) (- 4 6)) - Should be 6 result: ") (+ (* 2 4) (- 4 6));
(define a 3);
(define b (+ a 1));
(display "(+ a b (* a b)) - Should be 19 result: ") (+ a b (* a b));
(display "(= a b) - Should be false result: ") (= a b);

; conditions
(display "(if (and (> b a) (< b (* a b))) b a) - Should be b value - 4 result: ")
(if (and (> b a) (< b (* a b)))
    b
    a);

(display "(cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25)) - Should be 16 result: ")
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25));

(display "(+ 2 (if (> b a) b a)) - Should be 6 result: ") (+ 2 (if (> b a) b a));
(display "(* (cond ((> a b) a)
         ((< a b) b)
         (else -1)) - Should be  b value - 4 result: ") (* (cond ((> a b) a)
         ((< a b) b)
         (else -1)));
(display "(+ a 1)) - Should be 4 result: ") (+ a 1);
