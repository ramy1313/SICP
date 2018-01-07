#lang sicp

(define (f n)
  (cond ((< n 3) n)
        (else (+
               (f (- n 1))
               (* 2 (f (- n 2)))
               (* 3 (f (- n 3)))))))


(define (f-itr a b c n)
  (if (= n 0)
      c
      (f-itr (+ a (* 2 b) (* 3 c)) a b (- n 1))))

(define (g n)
  (f-itr 2 1 0 n))
  