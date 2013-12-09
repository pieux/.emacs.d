;; customize aquemacs emacs compability
(custom-set-variables '(user-emacs-directory "~/.emacs.d/"))
;; (aquamacs-autoface-mode -1)

(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq default-directory user-emacs-directory)

(add-to-list 'load-path user-emacs-directory)

(add-to-list 'load-path (concat user-emacs-directory "config"))

(require 'cl)

;; prefered config
(require 'init-packages)
(require 'init-util)
(require 'init-default)
(require 'init-eyecandy)
(require 'init-accessibility)

;; enhance editor
(require 'pkg-evil)
(require 'pkg-misc)
(require 'pkg-auto-complete)
(require 'pkg-expand-region)
(require 'pkg-projectile)
(require 'pkg-smartparens)

;; lang specific
(require 'pkg-markdown)
(require 'pkg-clojure)
(require 'pkg-web)

;; individual keymap
(require 'keymap-evil)
