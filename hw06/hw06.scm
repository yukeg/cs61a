(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cdr (cdr s)))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond
      ((< num 0) -1)
      ((= num 0) 0)
      ((> num 0) 1)
      )
)


(define (square x) (* x x))

(define (pow x y)
  (cond
      ((= y 0) 1)
      ((= y 1) x)
      ((= y 2) (square x))
      ((even? y) (square (pow x (/ y 2))))
      (else (* x (pow x (- y 1))))
      )
)

