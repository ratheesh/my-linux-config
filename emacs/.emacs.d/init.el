;;-*-Emacs-Lisp-*-
;; .init.el
;; Ratheesh
;; Dec 2013
;; Some stuff is taken from http://www.dgp.toronto.edu/~ghali/emacs.html
;; Special thanks to santosh shivraj

; Meine Emacs Einstellungen
;; This file does not work with XEmacs.
(when (featurep 'xemacs)
  (error "This .emacs file does not work with XEmacs."))

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen
(setq inhibit-startup-message t)

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; Setup packages
(require 'package)

;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


(setq package-list '(
    identica-mode dropdown-list whitespace
    cedit fill-column-indicator icicles hl-line+
    paredit highlight-parentheses c-eldoc emamux figlet
    auto-complete autopair auctex auto-complete-clang
    rainbow-mode rainbow-delimiters ace-jump-mode
    smart-mode-line ido-vertical-mode org-gnome figlet magit
    autopair auto-auto-indent key-chord expand-region
    smart-operator smart-newline duplicate-thing multiple-cursors
    mark-multiple smex smooth-scrolling undo-tree yasnippet-bundle
    ecb jump-char smart-forward org-bullets
))

(defun check-and-install (list)
  (let (v)
    (dolist (p list v)
      (if (not (package-installed-p p))
          (package-install p))))
  (message "Package check and installation done."))

(check-and-install package-list)

(require 'sane-defaults)
(require 'common-init)
(require 'mode-mappings)
(require 'cc-mode-init)
(require 'org-init)
(require 'snippets)
(require 'key-bindings)
;; End of the File




