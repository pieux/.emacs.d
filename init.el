(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq default-directory user-emacs-directory)

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (concat user-emacs-directory "config"))

(require 'cl)

(require 'init-packages)
(require 'init-util)
(require 'init-default)
(require 'init-eyecandy)
(require 'init-accessibility)

(require 'pkg-evil)
(require 'pkg-misc)
(require 'pkg-markdown)
(require 'pkg-auto-complete)
(require 'pkg-clojure)
(require 'pkg-expand-region)

(require 'keymap-evil)
