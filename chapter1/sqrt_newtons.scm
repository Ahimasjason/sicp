;; Sucessive Approximation
;; guess Y
;; Averaging Y with (X/Y) 
;;
;;  Initialize the guess y
;;  
;;


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))


(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define tolarance 0.001)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt x)
  (sqrt-iter 1.0 x))


(sqrt 3)
