(add-hook 'go-mode-hook
          (lambda ()
            ;; GOROOT, GOPATH環境変数の読み込み
            (let ((envs '("GOROOT" "GOPATH")))
              (exec-path-from-shell-copy-envs envs))
            (setq-default)
            ;; indentの設定
            (setq tab-width 2)
            (setq standard-indent 2)
            (setq indent-tabs-mode nil)
            ;; godef keybind
            (local-set-key (kbd "M-.") 'godef-jump)
            (local-set-key (kbd "M-,") 'pop-tag-mark)
            ))
(eval-after-load "go-mode"
 '(progn
     (require 'go-autocomplete)
     (add-hook 'go-mode-hook 'go-eldoc-setup)))
