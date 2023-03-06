;; Insert the following two lines in .emacs.d/init.el to load this config.
;; (add-to-list 'load-path "~/Documents/emacsconfig/")
;; (require 'emacs-custom-config)

;; Enable indent mode in org mode.
(add-hook 'org-mode-hook 'org-indent-mode)

;; Turn on tab line.
(global-tab-line-mode)

;; Turn off bell
(setq ring-bell-function 'ignore)

;; Enable require
(provide 'emacs-custom-config)

;; Disable startup screen
(setq inhibit-startup-message t)
