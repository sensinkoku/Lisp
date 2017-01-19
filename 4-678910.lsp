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
(mapcar #`addone x))
