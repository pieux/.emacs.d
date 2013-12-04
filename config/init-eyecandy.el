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
;; replace with smartparens
;; (show-paren-mode t)
(setq-default indent-tabs-mode nil)

;; *TO LEARN*: copy & paste
(setq x-select-enable-clipboard t
        x-select-enable-primary t
        save-interprogram-paste-before-kill t
        apropos-do-all t
        mouse-yank-at-point t)

;; show function(under cursor) result in status bar
(which-function-mode t)
;; disable cursor blink
(blink-cursor-mode -1)
;; reload buffer when file in disk changes
(global-auto-revert-mode 1)

(provide 'init-eyecandy)
