;; Insert the following two lines in .emacs.d/init.el to load this config.
;; (add-to-list 'load-path "~/Documents/emacsconfig/")
;; (require 'emacs-custom-config)

;; Enable require
(provide 'emacs-custom-config)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Turn off bell
(setq ring-bell-function 'ignore)

(load-theme 'wheatgrass t)
;; modus-vivendi
;; Deeper-blue

;;(set-background-color "black")

(if window-system
  (set-face-background 'default "black"))

;;(if window-system
;;  (custom-set-faces
;;   '(default ((t (:background "black"))))))

(setq mac-option-modifier 'meta)

;;(global-display-line-numbers-mode 1)

(recentf-mode 1)

(save-place-mode 1)

(global-auto-revert-mode 1)

(setq global-auto-revert-non-file-buffers t)

;;(global-hl-line-mode 1)

(add-to-list 'default-frame-alist '(width . 140))

;; cua-mode maps e.g. C-v to yank, which is inconvenient because it overrides page down.
;;(cua-mode 1)
;; Will this or a modified version of it make Cmd-v etc work instead?
;; It already seems to work by itself in the terminal at least for Cmd-v,
;; maybe because it is the terminal that translates the shortcuts to text.
;;(global-set-key [(alt c)] 'kill-ring-save)
;;(global-set-key [(alt v)] 'yank)
;;(global-set-key [(alt x)] 'kill-region)


;; Turn on tab line.
(global-tab-line-mode)

;; Disable startup screen
(setq inhibit-startup-message t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Markdown mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

;; expand-region
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

;; Org mode
(use-package org
  :hook (org-mode . org-indent-mode)
  :config
  (setq org-ellipsis " ▾" org-hide-emphasis-markers t)
  (setq org-cycle-separator-lines 1))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode))


;;(require 'org-bullets)
;;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;(dolist (face '((org-level-1 . 1.5)
                ;;(org-level-2 . 1.1)
                ;;(org-level-3 . 1.05)
                ;;(org-level-4 . 1.0)
                ;;(org-level-5 . 1.1)
                ;;(org-level-6 . 1.1)
                ;;(org-level-7 . 1.1)
                ;;(org-level-8 . 1.1)
;;		))
;;    (set-face-attribute (car face) nil :font "JetBrains Mono" :weight 'regular :height (cdr face)))

(add-hook 'org-mode-hook (lambda () (dolist (face '((org-level-1 . 1.5)
                ;;(org-level-2 . 1.1)
                ;;(org-level-3 . 1.05)
                ;;(org-level-4 . 1.0)
                ;;(org-level-5 . 1.1)
                ;;(org-level-6 . 1.1)
                ;;(org-level-7 . 1.1)
                ;;(org-level-8 . 1.1)
		))
    (set-face-attribute (car face) nil :font "JetBrains Mono" :weight 'regular :height (cdr face)))))
