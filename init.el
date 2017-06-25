;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(require 'eieio)

(unless load-file-name (cd (getenv "HOME")))

(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(setq custom-theme-directory "~/.emacs.d/etc/color-theme/")
(load-theme 'sango t)

(setq ispell-program-name "/usr/local/bin/ispell")

;; init-loader
(require 'init-loader)
;;(setq init-loader-show-log-after-init nil)
;;(init-loader-load "~/.emacs.d/inits")
(init-loader-load)
