(append-to-list 'auto-mode-alist
                ("Gemfile" . ruby-mode)
                ("\\.thor$" . ruby-mode)
                ("\\.rake$" . ruby-mode)
                ("Guardfile$" . ruby-mode)
                ("\\.env$" . ruby-mode))
;; for emacs 24.4
;; (with-eval-after-load 'ruby-mode
(eval-after-load 'ruby-mode
  '(progn
     (setq ruby-insert-encoding-magic-comment nil)
     (defadvice ruby-indent-line (after unindent-closing-paren activate)
       (let ((column (current-column))
             indent offset)
         (save-excursion
           (back-to-indentation)
           (let ((state (syntax-ppss)))
             (setq offset (- column (current-column)))
             (when (and (eq (char-after) ?\))
                        (not (zerop (car state))))
               (goto-char (cadr state))
               (setq indent (current-indentation)))))
         (when indent
           (indent-line-to indent)
           (when (> offset 0) (forward-char offset)))))))

;; rhtml
(append-to-list 'auto-mode-alist
                ("\\.eco$" . rhtml-mode)
                ("\\.jeco$" . rhtml-mode)
                ("\\.js.erb$" . rhtml-mode))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))
