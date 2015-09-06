(defun yufi/region-replace (fn)
  "replace region content"
  (let ((region-begin (region-beginning))
	(region-end (region-end)))
    (let ((content (buffer-substring region-begin region-end)))
      (setq content (funcall fn content))
      (delete-region region-begin region-end)
      (insert content)
      content)))



(defun yufi/tag-wrap ()
  ""
  (interactive)
  (let ((tag (read-from-minibuffer "warp tag: " "div")))
    (yufi/region-replace (lambda (x)
			   (concat "<" tag ">\n\t" x "\n</" tag ">")))))
		       
(provide 'region-replace)
