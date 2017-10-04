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
