(defun add1 (x)
  (mapcar #`(lambda (n) ( + 1 n)) x)
  )

(defun greater-than-five(n)(> n 5))
(defun greater_than_five_p (x)
  (mapcar #`greater-than-five x))

(defun onoff(p)
  (if (equal p `on) `off `on))
(defun flip (x)
  (mapcar #`onoff x))

(defun flip2(x)
  (mapcar #`(lambda (p)(if (equal p `on) `off `on x))))

(defun is_between_one_to_five (x) 
  (and (> e 1) (< e 5)))
(defun pick (x)
  (remove-if-not #`is_between_one_to_five x))
  
(defun pick2 (x)
  (remove-if-not #`(lambda (e) (and(> e 1)(< e 5)))
		 x))

(defun count-the (x)
  (length  (remove-if-not
	    #`(lambda(x)(equal x `the))
	    x)))
(defun my-intersection(x y)
 (remove-if-not #'(lambda(e)(member e y))x)
 )
 
(defun roughly-equal (x k)
  (remove-if-not #'(lambda(e) (and (> e (- k 10))
           (< e (+ k 10))))
     x))

(defun foo (x) (mapcar #'(lambda (e) e) x))

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

