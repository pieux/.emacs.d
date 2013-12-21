(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-visualstar)
(require-package 'evil-nerd-commenter)
(require-package 'evil-indent-textobject)
(require-package 'evil-matchit)
(require-package 'surround)


;; C-u for scroll(vim behavior), not numeric prefix argument(emacs behavior)
(setq evil-want-C-u-scroll t)
;; Whether "C-w" prefixes windows commands in Emacs state. nil(default)
;; (setq evil-want-C-w-in-emacs-state t)


;; refer to vim magic
(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)


;; cursor/bar color as mode changed
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-insert-state-cursor '("orange" bar))


(require 'evil)
(require 'evil-leader)
(require 'evil-nerd-commenter)
(require 'evil-indent-textobject)
(require 'evil-visualstar)
(require 'evil-matchit)
(require 'surround)


(evil-mode 1)
(global-evil-leader-mode)
(global-surround-mode 1)
(global-evil-matchit-mode 1)


(provide 'pkg-evil)
