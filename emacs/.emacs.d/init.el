;;(require 'cask "~/.cask/cask.el")
;;(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'load-path "~/.emacs.d/")

(load-theme 'solarized-light t)

(setq
   ;; follow symlinks and don't ask
  vc-follow-symlinks t
)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq
  show-trailing-whitespace t
)

(global-linum-mode t)
(setq
   require-final-newline t
)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Unbind arrow keys to force me to figure out emacs navigation
(global-set-key (kbd "<up>") 'ignore)
(global-set-key (kbd "<down>") 'ignore)
(global-set-key (kbd "<left>") 'ignore)
(global-set-key (kbd "<right>") 'ignore)
(global-set-key (kbd "C-<up>") 'ignore)
(global-set-key (kbd "C-<down>") 'ignore)
(global-set-key (kbd "C-<left>") 'ignore)
(global-set-key (kbd "C-<right>") 'ignore)
(global-set-key (kbd "<home>") 'ignore)
(global-set-key (kbd "<end>") 'ignore)
