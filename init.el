
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'eieio)

;(when load-file-name
;  (setq user-emacs-directory (file-name-directory load-file-name)))

(unless load-file-name (cd (getenv "HOME")))

(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(setq custom-theme-directory "~/.emacs.d/etc/color-theme/")
(load-theme 'tango t)

;; init-loader
(require 'init-loader)
;; (custom-set-variables
;;  '(init-loader-show-log-after-init nil))
(init-loader-load "~/.emacs.d/inits")
(init-loader-load)
