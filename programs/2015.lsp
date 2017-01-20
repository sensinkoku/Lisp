(defun exor (x y)
  (cond ((null x) y)
	((member (first x) y) (exor (rest x) (remove (first x) y)))
	(t (cons (first x) (exor (rest x) y)))
	))

(defun allabs (x)
  (cond ((null x) nil)
	((consp x) (cons (allabs (first x)) (allabs (rest x))))
	((numberp x) (abs x))
	(t x)
   )
  )

(defun myfindif (func x)
  (cond ((null x) nil)
	((funcall func (first x)) (first x))
	(t (myfindif func (rest x)))
   )
  )

(defun triangle (x)
  (cond ((< x 1) nil)
	(t (drawline x) (format t "~%") (triangle (- x 1)))
   )
  )

(defun rank (card)
  (first card))

(defun suit (card)
  (second card))

(defun count-suit (s hand)
  (length (remove-if-not #'(lambda(x) (equal (suit x) s)) hand))
  )

(defun black-cards (hand)
  (remove-if-not #'(lambda (x) (or (equal (suit x) 'club) (equal (suit x) 'spade))) hand)
  )

(defun shapeblock (s)
  (mapcar #'first (fetch (list '? 'shape s)))
  )

(defun samecolor (block)
  (remove block (mapcar #'first (fetch (list '? 'color (third (first (fetch (list block 'color '?))))))))
  )
