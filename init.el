(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq default-directory user-emacs-directory)

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (concat user-emacs-directory "config"))

(require 'cl)
;;----------------------------------------------------------------------------
;; Bootstrap config
(require 'init-packages)
(require 'init-util)
(require 'init-default)
(require 'init-eyecandy)
(require 'init-accessibility)

;;----------------------------------------------------------------------------
;; evil family
(require 'pkg-evil)

;;----------------------------------------------------------------------------
;; enhance editor
(require 'pkg-misc)
(require 'pkg-markdown)

;;----------------------------------------------------------------------------
;; keymaps
(require 'keymap-evil)

(require 'pkg-clojure)
(require 'pkg-auto-complete)
