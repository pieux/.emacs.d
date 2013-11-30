;; color theme
(require-package 'color-theme)
(require 'color-theme)

(require-package 'color-theme-railscasts)
(require 'color-theme-railscasts)

;; font
(set-face-attribute
  'default nil :font "Monaco 13")

;; hl-line, set custom color
(global-hl-line-mode 1)
(set-face-background 'hl-line "#3e4446")
(set-face-foreground 'highlight nil)

;; show matching parenthess 
(show-paren-mode t)
(setq-default indent-tabs-mode nil)

;; *TO LEARN*: copy & paste
(setq x-select-enable-clipboard t
        x-select-enable-primary t
        save-interprogram-paste-before-kill t
        apropos-do-all t
        mouse-yank-at-point t)

(provide 'init-eyecandy)
