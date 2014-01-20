;; key chord means hit two keys simultaneously, or a single key quickly pressed twice
(after 'evil

  ;; use Emacs keymap in inserte state
  (define-key evil-insert-state-map (kbd "C-n") 'next-line)
  (define-key evil-insert-state-map (kbd "C-p") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-d") 'delete-char)
  (define-key evil-insert-state-map (kbd "C-e") 'end-of-visual-line)

  ;; like vim behavior
  (define-key evil-insert-state-map (kbd "RET") 'evil-ret-and-indent)
  (define-key evil-motion-state-map "j" 'evil-next-visual-line)
  (define-key evil-motion-state-map "k" 'evil-previous-visual-line)

  ;; (require-package 'key-chord)
  ;; (key-chord-mode 1)

  ;; not very good, I prefer Ctrl-[
  ;; (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  ;; (key-chord-define evil-insert-state-map "kj" 'evil-normal-state)

  ;; key-chord is not very cosy, disable now; use leader
  ;; (after 'ace-jump-mode
  ;; (key-chord-define evil-normal-state-map "jw" 'ace-jump-word-mode)
  ;; (key-chord-define evil-normal-state-map "jc" 'ace-jump-char-mode)
  ;; (key-chord-define evil-normal-state-map "jl" 'ace-jump-line-mode))

  (after 'smex
    (define-key evil-visual-state-map (kbd "SPC SPC") 'smex)
    (define-key evil-normal-state-map (kbd "SPC SPC") 'smex))

  ;; (after 'evil-nerd-commenter
  ;; (evilnc-default-hotkeys))

  (define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

  (after 'evil-leader
    (evil-leader/set-leader ",")
    (evil-leader/set-key
      "e" (kbd "C-x C-e"))

    (after 'ace-jump-mode
      (evil-leader/set-key
        "j l" 'ace-jump-line-mode
        "j w" 'ace-jump-word-mode
        "j c" 'ace-jump-char-mode))

    (after 'evil-nerd-commenter
      (evil-leader/set-key
        "c c" 'evilnc-comment-or-uncomment-lines))

    (after 'projectile
      (evil-leader/set-key
        "p a" 'projectile-ag
        "p d" 'projectile-find-dir
        "p b" 'projectile-switch-to-buffer
        "p r" 'projectile-recentf
        "p p" 'projectile-switch-project
        ))

    ) ;; eof (after 'evil-leader)

  ) ;; eof (after 'evil

(provide 'keymap-evil)
