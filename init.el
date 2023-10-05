; initialize package management
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Ensure 'use-package' is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Enable 'use-package'
(eval-when-compile
  (require 'use-package))

;; Packages configuration
(use-package company
  :ensure t
  :hook (after-init . global-company-mode))
(use-package go-mode
  :ensure t)
(use-package magit
  :ensure t)
(use-package yasnippet
  :ensure t ; Ensure that the package is installed
  :hook (after-init . yas-global-mode))
(use-package yasnippet-snippets
  :ensure t)
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

; Set global modes and variables
(menu-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)
(setq-default indent-tabs-mode nil) ; Use spaces for indentation globally
(setq-default tab-width 4)          ; Set the default tab width globally
(setq
   whitespace-style
   '(face ; viz via faces
     trailing ; trailing blanks visualized
     lines-tail ; lines beyond
                ; whitespace-line-column
     space-before-tab
     space-after-tab
     newline ; lines with only blanks
     indentation ; spaces used for indent
                 ; when config wants tabs
     empty ; empty lines at beginning or end
     )
   whitespace-line-column 80 ; column at which
        ; whitespace-mode says the line is too long
   )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(zenburn-theme yasnippet-snippets yasnippet magit use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
