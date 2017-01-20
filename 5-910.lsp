(defun drawline(n)
  (cond 
  ((= n 0) nil)
	(t (format t "*") (drawline (- n 1)))
	)
)
;q-10
(defun drawbox (n m)
  (cond 
  	((= m 0) nil)
	(t (drawline n) (format t "~%") (drawbox n (- m 1)))
	)
)
