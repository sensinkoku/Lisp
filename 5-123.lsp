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
