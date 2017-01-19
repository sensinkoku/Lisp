; 4-1
(setf line '(a b c))

;(a b c)
;1.
(append line (list (first line)))

;=> (a b c a)

;2.
(append (last line) line)

:=> (c a b c)

;3.
(list (first line)(last line))

;=> (a (c))
; because last returns last cons cell

;4.
(cons (last line) line)

;=>((c) a b c)

;5
(append line '(d e f))

;=> (a b c d e f)

;4-2

(defun rev(x)
	(cond ((null x) nil)
			(t (append (rev (rest x))(list(first x))))
	)
)
;4-3
(defun rm(x y)
	(cond ((null y) nil)
		((equal x (first y)) (rm x (cdr y)))
		(t (cons (car y) (rm x (cdr y))))
	)
)


;4-4
(defun mem(x y)
	(cons ((null y) nil)
		((equal x (first y)) y)
		(t (mem x (cdr y)))
	)
)
;4-5
(defun beforep(x y l)
	(mem y (mem x l))
)
;mem returns the rest list 
;when you find x, if y is included




