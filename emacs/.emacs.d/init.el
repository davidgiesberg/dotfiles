;;(require 'cask "~/.cask/cask.el")
;;(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")

(load-theme 'solarized-light t)

(setq
   ;; follow symlinks and don't ask
  vc-follow-symlinks t
)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-linum-mode t)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
