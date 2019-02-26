(package-initialize)

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))


;;;;;;;;;;;;;;;;;;;;
;;    PACKAGES    ;;
;;;;;;;;;;;;;;;;;;;;

;; HELM

;; required for helm
(use-package helm
  :ensure t
  :config
  (helm-mode 1))

;; bing helm to M-x
(global-set-key (kbd "M-x") 'helm-M-x)

;; use helm-mini
;; (global-set-key (kbd "C-x b") 'helm-mini)

;; use helm-kill-ring
;; (global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; helm find-files
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)


;; Ace window to switch windows easily
(use-package ace-window
  :ensure t
  :defer t
  :init
  (progn
    (global-set-key (kbd "M-o") 'ace-window)
    (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
     ;;more info at https://github.com/abo-abo/ace-window
    )
  )

;; VIM

;; vim mode
(use-package evil
  :ensure t ;; install the evil package if not installed
  :init ;; tweak evil's configuration before loading it
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config ;; tweak evil after loading it
  (evil-mode))


(use-package evil-surround
  :ensure t
  :commands gloabl-evil-surround-mode
  :config
  (global-evil-surround-mode 1))

;; MAGIT

(use-package magit
  :ensure t)

;; use C-x g to open git status
(global-set-key (kbd "C-c g") 'magit-status)


;; ORG MODE
(use-package org
  :ensure t)

;; paredit
(use-package paredit
  :ensure t
  :diminish paredit-mode
  :commands paredit-mode)

;; Projectile
(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
  (projectile-mode +1))

(use-package helm-projectile
  :ensure t)

;; solarized color scheme
(use-package solarized-theme
  :ensure t
  :config
  (progn (load-theme 'solarized-dark t)))

;; forec emacs to use the same path as shell
(use-package exec-path-from-shell
  :ensure t)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; syntax check using flycheck
(use-package flycheck
  :ensure t)
(global-flycheck-mode t)

;; autocomplete is provided by company
(use-package company
  :ensure t)
(add-hook 'after-init-hook 'global-company-mode)


;; Powerline
(use-package powerline
  :ensure t)
(powerline-default-theme)



;; COMMON LISP

;; set up slime
(use-package slime
  :ensure t
  :config
  (progn
    (setq inferior-lisp-program "/usr/local/bin/sbcl")
    (slime-setup)))


;; PYTHON

(use-package elpy
:ensure t)
(elpy-enable)

;; autocompletion for Python using jedi
;; (use-package company-jedi
;; :ensure t)
;; (defun my/python-mode-hook ()
;; (add-to-list 'company-backends 'company-jedi))
;; (add-hook 'python-mode-hook 'my/python-mode-hook)
;; (setq jedi:setup-keys t)
;; (setq jedi:complete-on-dot t)
;; (add-hook 'python-mode-hook 'jedi:setup)

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")

;; auto-format using pep8
(use-package py-autopep8
  :ensure t)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)


;;;;;;;;;;;;;;;;;;;;
;; CONFIGURATION  ;;
;;;;;;;;;;;;;;;;;;;;

;; type "y"/"n" instead of "yes"/"no"
(fset 'yes-or-no-p 'y-or-n-p)

;; don't use tabs for indentation, use 4 spaces instead
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

;; Single space sentence end
(setq sentence-end-double-space nil)

(setq require-final-newline t)

;; remove trailing whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; highlight current line
(global-hl-line-mode 1)

;; move backup files to ~/.emacs-backups/
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))
(setq delete-old-versions t)

;; show line and column number
(line-number-mode 1)
(column-number-mode 1)
(global-linum-mode t)

;; Disable splash screen
(setq inhibit-splash-screen t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-projectile use-package solarized-theme py-yapf projectile paredit magit helm flycheck exec-path-from-shell evil-visual-mark-mode evil-surround company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; stop creating backup~ files
(setq make-backup-files nil)
;; stop creating #autosave# files
(setq auto-save-default nil)
;; disable lock files
(setq create-lockfiles nil)

;; Highlight matching parentheses
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Wind move: use shift+arrow to change windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Hide menu bar, tool bar and scroll bar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Put all backup files into one directory.
(setq make-backup-files t
      backup-by-copying t ;; Backup-by-move messes with dropbox
      vc-make-backup-files t
      backup-directory-alist '(("." . "~/.emacs.backup"))
      tramp-backup-directory-alist '(("." . "~/.emacs.backup"))
      kept-new-versions 5
      kept-old-versions 2
      delete-old-versions t
      version-control t)


;; SQL


;;  SQL stuff This is mostly copy pasted from
;;  https://truongtx.me/2014/08/23/setup-emacs-as-an-sql-database-client
;;  requires installing java runtime and presto-cli
;;  `sane-presto` and the presto stuf.
(require 'sql)

(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

(setq sql-send-terminator t)

(load-file "~/.emacs.d/secrets.el")

(defun sql-presto ()
  "Connect to presto."
  (interactive)
  (let ((sql-product 'presto))
    (sql-connect 'presto)))

(defun sql-comint-presto (product options &optional buf-name)
  (let ((sql-login-delay 0.9))
    (sql-comint product options buf-name)))
