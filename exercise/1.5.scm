#lang racket
; Exercise 1.5:
; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;Then he evaluates the expression

(test 0 (p))
; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)

; ANSWER:
; With an interpreter that uses applicative-order evaluation, the expression (test 0 (p)) will result in an infinite loop, because the interpreter will first evaluate the arguments before applying the procedure. In this case, the argument (p) will be evaluated first, which will result in an infinite loop, because the procedure (p) calls itself recursively. Therefore, the interpreter will never reach the base case of the if statement, and the program will run indefinitely.

; With an interpreter that uses normal-order evaluation, the expression (test 0 (p)) will result in 0, because the interpreter will first substitute the arguments into the procedure without evaluating them. In this case, the argument (p) will not be evaluated, because the if statement will short-circuit and return 0 without evaluating the second argument. Therefore, the program will terminate and return 0.

; In summary, applicative-order evaluation evaluates the arguments before applying the procedure, while normal-order evaluation substitutes the arguments into the procedure without evaluating them until necessary.