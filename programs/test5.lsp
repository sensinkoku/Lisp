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
