;; key chord means hit two keys simultaneously, or a single key quickly pressed twice
(after 'evil
  (require-package 'key-chord)
  (key-chord-mode 1)

  ;; not very good, I prefer Ctrl-[
  ;; (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  ;; (key-chord-define evil-insert-state-map "kj" 'evil-normal-state)

  (after 'ace-jump-mode
    (key-chord-define evil-normal-state-map "jw" 'ace-jump-word-mode)
    (key-chord-define evil-normal-state-map "jc" 'ace-jump-char-mode)
    (key-chord-define evil-normal-state-map "jl" 'ace-jump-line-mode))

  (after 'smex
    (define-key evil-visual-state-map (kbd "SPC SPC") 'smex)
    (define-key evil-normal-state-map (kbd "SPC SPC") 'smex))

  (after 'evil-leader
    (evil-leader/set-leader ",")
    (evil-leader/set-key
      "e" (kbd "C-x C-e"))
    ;; ace jump mode, disable now, using maps above
    (after 'ace-jump-mode
      (evil-leader/set-key
        "w w" 'ace-jump-word-mode
        )))

  (define-key evil-insert-state-map (kbd "RET") 'evil-ret-and-indent)

  )

(provide 'keymap-evil)
