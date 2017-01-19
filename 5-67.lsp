(defun my-intersection(x y)
 (remove-if-not #'lambda(e)(member e y))
 x)
 
(defun roughly-equal (x k)
  (find-if #'(lambda(e) (and (> e (- k 10))
			     (< e (+ k 10))))
	   x))
