
(define (split-at lst n)
  (cond
      ((or (null? lst) (< n 0))  (list lst))
      ((= n 0) (cons nil lst))
      ((= n 1) (cons (car lst)  (cdr lst)))
      ((= n 2) (begin
          (define helper (split-at (cdr lst) (- n 1)))
          (cons (cons (car lst) (cons (car helper) nil)) (cdr helper))
          ))
      (else (begin
          (define helper (split-at (cdr lst) (- n 1)))
          (cons (cons (car lst) (car helper)) (cdr helper))
          ))
      )
)


(define (compose-all funcs)
  'YOUR-CODE-HERE
)

