;; startup screen
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)


;; custom options saved here
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))


;; linum-mode, simple to be understood
(global-linum-mode t)
(setq linum-format "%4d ")


;; better buffer names for duplicates
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward
      uniquify-separator "/"
      uniquify-ignore-buffers-re "^\\*" ; leave special buffers alone
      uniquify-after-kill-buffer-p t)


;; goto last position when opened
(require 'saveplace)
(setq save-place-file (concat user-emacs-directory ".cache/places"))
(setq-default save-place t)


;; minibuffer history
(require 'savehist)
(setq savehist-file (concat user-emacs-directory ".cache/savehist")
      savehist-additional-variables '(search ring regexp-search-ring)
      savehist-autosave-interval 60)
(savehist-mode +1)

;; recent files
(require 'recentf)
(setq recentf-save-file (concat user-emacs-directory ".cache/recentf")
      recentf-max-saved-items 1000
      recentf-max-menu-items 500)
(recentf-mode +1)

;; eshell
(setq eshell-directory-name (concat user-emacs-directory ".cache/eshell"))
(setq eshell-aliases-file (concat user-emacs-directory ".eshell-aliases"))


;; erc
(setq erc-log-channels-directory (concat user-emacs-directory ".cache/erc/logs"))


;; narrowing
(put 'narrow-to-region 'disabled nil)


;; store most files in the cache
(setq backup-directory-alist
      `((".*" . ,(concat user-emacs-directory ".cache/backups")))
      auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory ".cache/backups") t))
      auto-save-list-file-prefix
      (concat user-emacs-directory ".cache/auto-save-list/.saves-"))


;; better scrolling
(setq scroll-margin 3
      scroll-conservatively 9999
      scroll-preserve-screen-position t)


;; simpify yes-or-no tooltip
(defalias 'yes-or-no-p 'y-or-n-p)
(xterm-mouse-mode t)


;; encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;; setq & setq-default 
(setq sentence-end-double-space nil
      delete-by-moving-to-trash t
      mark-ring-max 64
      global-mark-ring-max 128
      ring-bell-function 'ignore)
 
(setq-default
 indent-tabs-mode nil
 blink-cursor-delay 0
 blink-cursor-interval 0.4
 line-spacing 0.2
 truncate-lines t)


(which-function-mode t)
(global-auto-revert-mode 1)


(add-hook 'find-file-hook (lambda ()
                            (visual-line-mode)
                            (setq show-trailing-whitespace t)))

(random t) ;; seed



(provide 'init-default)
