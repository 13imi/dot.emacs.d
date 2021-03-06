(defun marked-preview-file ()
  (interactive)
  (shell-command
   (format "open -a Marked\\ 2.app %s"
           (shell-quote-argument (buffer-file-name)))))

;; (with-eval-after-load 'markdown-mode
(eval-after-load 'markdown-mode
  '(progn
     (define-key markdown-mode-map (kbd "M-p") nil)
     (define-key markdown-mode-map (kbd "M-n") nil)
     (define-key markdown-mode-map (kbd "C-c C-c o") 'marked-preview-file)))

;; githubflavar-mode用
(defadvice delete-trailing-whitespace (around disable-in-markdown activate)
  (unless (eq major-mode 'markdown-mode)
    ad-do-it))
