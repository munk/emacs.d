;;; Sensible color theme
(load-theme 'tango-dark)

;;; Set up melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(setenv "PATH"
	(concat (getenv "PATH")
		":" "/usr/local/bin"))


;;; Installed Packages

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
;; Geiser
(setq geiser-racket-binary "/Applications/Racket v6.0/bin/racket")
;; Paredit
;; Haskell Mode
;; Tuareg

;; Org mode
(require 'org)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list
			"~/org/home.org"
			"~/org/projects.org"
			"~/org/radio.org"))

;;; Parens!
(show-paren-mode 1)
(setq show-paren-delay 0)
(electric-pair-mode 1)
(setq electirc-pair-pairs '(
			    (?\" . ?\")
			    (?\{ . ?\})
			    (?\[ . ?\])))

;;; Prettify
(global-prettify-symbols-mode 1)


;;; NOTES:
;; use smerge-mode to resolve conflicts with magit


;;; Customizations
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(scheme-program-name "/usr/local/bin/racket"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq package-enable-at-startup nil)
(package-initialize)
(exec-path-from-shell-initialize)
