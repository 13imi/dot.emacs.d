(defun quickrun-sc (start end)
  (interactive "r")
  (if mark-active
      (quickrun :start start :end end)
    (quickrun)))

(global-set-key (kbd "s-R") 'quickrun-sc)
