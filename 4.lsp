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
	(cond ((null y) nil)
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
(defun rmdup (x)
  (cond ((null x)nil
	 ((mem (car x) (cdr x))
	  (cons (car x) (rmdup (rm (car x) (cdr x))))))
(t (cons (car x) (rmdup(cdr x)))))
)

(defun wa (x y)
  (rmdup (append x y))
  )
(defun seki (x y)
  (cond ((null x) nil)
      ((mem ( car x) y)
       (cons (car x) (seki (cdr x) y)))
      (t (seki (cdr x)y))))

(defun sa (x y)
  (cond 
      ((null x) nil)
      ((mem ( car x) y) (sa (cdr x) y)) ;if-have
      (t (cons (car x) (sa (cdr x) y))) ;if-not-have
      )
)

(defun lookup(x y)
  (cond (((null y) nil)
  ((equal (first(first y)) x) (first y))
  (t lookup(x (rest y))))
  )
)

(defun sum-tree(x)
  (cond ((null x) 0)
	((numberp x) x)
	(t (+(sum-tree (car x))
	     (sum-tree (cdr x))))))

(defun sleepy (x)
  (cond 
  ((null x) nil)
	((atom x) 'z)
	(t (cons (sleepy ( car x)) (sleepy (cdr x)) ))
    )
)

(defun addone (n) ( + 1 n))
(defun add1 (x)
    (mapcar #`addone x)
    )




