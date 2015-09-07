(require 'dash)
(require 'dash-functional)
(require 's)

(defun yufi/replace-region (fn)
  "replace region content."
  (-let ((beg (region-beginning))
	 (end (region-end))
	 (ct (buffer-substring (region-beginning) (region-end))))
    (delete-region beg end)
    (->> ct (funcall fn) insert)))
		       
(provide 'yufi)
