(defun yufi/bs-grid ()
  (interactive)
  (yufi/replace-region
   (-compose
    (-partial 's-join "")
    (-partial '-map (-compose
		     (-partial 's-append "</div>\n")
		     (-partial 's-prepend "<div class=\"row\">\n")
		     (-partial 's-join "")
		     (-partial '-map (-compose
				      (-partial 's-append "\"></div>\n")
				      (-partial 's-prepend "\s\s<div class=\"col-md-")))
		     (-partial 's-split "\s+")))
    (-partial 's-split "\n"))))
