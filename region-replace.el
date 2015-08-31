(defun yufi/region-replace (fn)
  "replace region content"
  (let ((region-begin (region-beginning))
	(region-end (region-end)))
    (let ((content (buffer-substring region-begin region-end)))
      (setq content (funcall fn content))
      (delete-region region-begin region-end)
      (insert content))))
      
(defun yufi/hello-world ()
  "hello world"
  (interactive)
  (yufi/region-replace (lambda (x)
		       (concat "hello" x "world"))))
		       
(provide 'region-replace)
