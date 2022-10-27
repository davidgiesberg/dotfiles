(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; use-package - https://github.com/jwiegley/use-package#getting-started
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;;(add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;;(require 'cask "~/.cask/cask.el")
;;(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;;(add-to-list 'load-path "~/.emacs.d/")

(load-theme 'solarized-light t)

(setq
   ;; follow symlinks and don't ask
  vc-follow-symlinks t
)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq
  show-trailing-whitespace t
)

(global-display-line-numbers-mode)
(setq
   require-final-newline t
)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;(autoload 'markdown-mode "markdown-mode"
;;    "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; (package-initialize)

;; (Use-package markdown-mode
;;   :ensure t
;;   :commands (markdown-mode gfm-mode)
;;   :mode (("README\\.md\\'" . gfm-mode)
;;          ("\\.md\\'" . markdown-mode)
;;          ("\\.markdown\\'" . markdown-mode))
;;   :init (setq markdown-command "multimarkdown"))


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

;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; (require 'terraform-mode)
;; (add-to-list 'auto-mode-alist '("\\.tf\\'" . terraform-mode))

;; ;; Auto completion
(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0
        company-minimum-prefix-length 4
        company-selection-wrap-around t)
        (global-company-mode t))

;; git gutter
;; (use-package git-gutter-fringe
;;   :requires fringe-helper
;;   :ensure)
;; ;; TODO: Figure out if below require can be included in above use-package clause
;; (require 'git-gutter-fringe)
(use-package diff-hl
  :ensure t
  :config
  (global-diff-hl-mode)
  (unless (window-system) (diff-hl-margin-mode)))
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    '(helm ivy projectile cov python-coverage ag magit yaml-mode use-package terraform-mode diff-hl company)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; ag silver-searcher
(use-package ag
  :ensure t)

;; python-coverage
;;(use-package cov
;;  :ensure)

;; projectile (for managing/navigating projects)
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map)))

;; ;; Ivy completion
;; (use-package ivy
;;   :ensure t
;;   :init
;;   (ivy-mode +1))

;; Straight package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
;;;;  Effectively replace use-package with straight-use-package
;;; https://github.com/raxod502/straight.el/blob/develop/README.md#integration-with-use-package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Helm


(use-package helm
  :straight t
  :ensure t)
(use-package helm-projectile)
