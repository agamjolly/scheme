(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Returns a list of two-element lists
(define (enumerate s)

  (define (help s i)
    (if (null? s) nil
        (cons (list i (car s))
            (help(cdr s) (+ i 1))
        )
    )
  )
  (help s 0)
)

;; Merge two lists LIST1 and LIST2 according to COMP and return
;; the merged lists.
(define (merge comp list1 list2)

  (cond ((null? list1)
            list2)
        ((null? list2)
            list1)
  (else (if (comp
                (car list1)
                (car list2)
            )
            (cons
                (car list1)
                (merge comp
                    (cdr list1) list2
                )
            )
            (cons
                (car list2)
                (merge comp
                    (cdr list2) list1
                )
            )
       )
  )
  )
)



(merge < '(1 5 7 9) '(4 8 10))
; expect (1 4 5 7 8 9 10)
(merge > '(9 7 5 1) '(10 8 4 3))
; expect (10 9 8 7 5 4 3 1)



(define (nondecreaselist s)


    (cond((null? s)'())
        ((null?(cdr s))(list s))
            ((> (car s)(cadr s))
                (cons(list(car s))
                (nondecreaselist(cdr s))
                )
            )
    (else
        (let((check(nondecreaselist(cdr s))))
            (cons
                (cons(car s)(car check))
                (cdr check)
            )
        )
    )
    )
)


