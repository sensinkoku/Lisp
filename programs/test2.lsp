(defun allabs (x)
  (cond ((null x) nil)
	((consp x) (cons (allabs (first x)) (allabs (rest x))))
	((numberp x) (abs x))
	(t x)
   )
  )
