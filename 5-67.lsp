(defun my-intersection(x y)
 (remove-if-not #'(lambda(e)(member e y))
 x))
 
(defun roughly-equal (x k)
  (remove-if-not #'(lambda(e) (and (> e (- k 10))
			     (< e (+ k 10))))
	   x))

(defun foo (x) (mapcar #'(lambda (e) e) x))
