(require-package 'guide-key)
(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x" "C-c"))
(setq guide-key/recursive-key-sequence-flag t)
(guide-key-mode 1)

(require 'ido)
(setq ido-enable-prefix nil)
(setq ido-use-virtual-buffers t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-use-filename-at-point 'guess)
(setq ido-save-directory-list-file (concat user-emacs-directory ".cache/ido.last"))

(ido-mode t)
;; disable for error: dired ls is not support
;; (ido-everywhere t)

(require-package 'ido-ubiquitous)
(ido-ubiquitous-mode t)

(require-package 'flx-ido)
(flx-ido-mode t)

(require-package 'ido-vertical-mode)
(ido-vertical-mode)

(require-package 'smex)
(require 'smex)
(setq smex-save-file (concat user-emacs-directory ".cache/smex-items"))
(smex-initialize)

;; key bingdings
(after 'smex
  (global-set-key (kbd "M-x") 'smex))

;; the silver search
(require-package 'ag)
(require 'ag)

(provide 'init-accessibility)
