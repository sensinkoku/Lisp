(defun match-element(x y)
  (cond ((equal x y) t)
	((equal y '?)t)
	(t nil)
))
(defun match-triple (x y)
  (every #'match-element x y)
)

(defun fetch (pat)
  (remove-if-not #'(lambda (x) (match-triple x pat))
		 blockdata))
     
(defun supporters (b1)
  (mapcar #'first
	  (fetch(list'? 'support b1))))

(defun desc1 (b1)
  (fetch (list b1 '? '?)))

(defun desc2 (b1)
  (mapcar #'cdr (desc1 b1)))

(defun description (b1)
  (reduce #'append(desc2 b1)))

(defun supp-cube (b1)
  (member 'cube
	  (mapcar #'(lambda (b) (third (first (fetch 
					       (list b 'shape '?)))))
		  (supporters b1))))
