(defun shapeblock (s)
  (mapcar #'first (fetch (list '? 'shape s)))
  )

(defun samecolor (block)
  (remove block (mapcar #'first (fetch (list '? 'color (third (first (fetch (list block 'color '?))))))))
  )
