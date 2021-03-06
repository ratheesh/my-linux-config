;;; This module configure common programming environment

;;; show trailing white spaces by default
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;;; common env
(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'prog-mode-hook 'set-newline-and-indent)

;;; hungry-delete
(use-package hungry-delete
  :ensure t
  :defer t
  :commands prog-mode
  :init
  (progn
    (add-hook 'prog-mode
	      (lambda () (global-hungry-delete-mode)))))

;;; license management
(use-package lice
  :ensure t
  :commands prog-mode
  :defer t )

;;; make parenthesis colorful!
(use-package rainbow-delimiters
  :ensure t
  :commands prog-mode
  :config
  (progn
    (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
    (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)))

;yaml mode
(use-package yaml-mode :ensure t :defer t :commands yaml-mode)

;; clean indentation due to blank lines - very important
(use-package clean-aindent-mode
  :ensure t
  :init
  (progn
    (add-hook 'prog-mode-hook 'clean-aindent-mode)))

(use-package dtrt-indent
  :ensure t
  :init
  (progn
    (dtrt-indent-mode 1)
    ;; (setq dtrt-indent-verbosity 0)
    ))

;;; Handle whitespaces only on edited lines
(use-package ws-butler
  :ensure t
  :defer t
  :diminish ws-butler-mode
  :commands prog-mode
  :config
  (progn
    (add-hook 'c-mode-common-hook 'ws-butler-mode)
    (add-hook 'python-mode-hook 'ws-butler-mode)
    (add-hook 'cython-mode-hook 'ws-butler-mode)))

(use-package comment-dwim-2
  :ensure t
  :disabled t
  :bind
  (("M-;" . comment-dwim-2))
  :init
  (progn
    (setq comment-dwim-2--inline-comment-behavior 'reindent-comment)))

;;; auto complete package
;; (use-package fuzzy :ensure t :defer t)

;;; semantic package
(use-package semantic
  :disabled t
  :config
  (progn
    (global-semanticdb-minor-mode 1)
    (global-semantic-idle-scheduler-mode 1)
    (semantic-mode 1)
    (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
    (use-package stickyfunc-enhance :ensure t)))

;;; auto complete package
(use-package auto-complete
  :ensure t
  :disabled t
  :defer t
  :diminish auto-complete-mode
  :init
  (progn
    (use-package auto-complete-config
      :init
      (progn
        (ac-config-default)))
    (use-package ac-helm
      :ensure t
      :init
      (progn
	(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)))
    (use-package fuzzy :ensure t)
    (ac-set-trigger-key "TAB")
    (ac-set-trigger-key "<tab>")
    (setq ac-auto-show-menu t
	  ac-quick-help-delay 0.5
	  ac-use-fuzzy t))
  :config
  (progn
    (global-auto-complete-mode +1)))

;;; Company - Complete anything package
(use-package company
  :ensure t
  :defer t
  :init (progn
	  (use-package company-c-headers :ensure t)
	  (global-company-mode)
          (setq company-global-modes '(not python-mode cython-mode sage-mode))
	  (add-to-list 'company-backends 'company-c-headers))
  :config (progn
            (setq company-tooltip-limit 20
		  company-idle-delay .1
		  company-echo-delay 0
		  company-begin-commands '(self-insert-command))
	    (add-to-list 'company-backends 'company-gtags)
	    (add-to-list 'company-backends 'company-yasnippet)
	    ;; (add-to-list 'company-backends 'company-semantic)
	    ))

;;; gtags configuration
(use-package ggtags
  :pin melpa-stable
  :ensure t
  :disabled t
  :diminish ggtags-mode
  :bind
  (("<f6>" . ggtags-find-reference)
   ("<f7>" . ggtags-find-definition)
   ("<f8>" . pop-tag-mark))
  :config
  (progn
    (setq ggtags-update-on-save t)
    (setq ggtags-global-ignore-case t)
    (setq ggtags-completing-read-function 'nil)
    (setq-local eldoc-documentation-function #'ggtags-eldoc-function)
    (setq-local imenu-create-index-function #'ggtags-build-imenu-index)
    (add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))
    (eldoc-mode t)))

;;; helm-gtags
(use-package helm-gtags
  :pin melpa-stable
  :ensure t
  ;; :disabled t
  :defer t
  :diminish helm-gtags-mode
  :bind
  (("<f6>" . helm-gtags-find-rtag)
   ("<f7>" . helm-gtags-dwim)
   ("<f8>" . helm-gtags-pop-stack))
  :init
  (progn
    (setq
     helm-gtags-ignore-case t
     helm-gtags-auto-update t
     helm-gtags-pulse-at-cursor t
     helm-gtags-use-input-at-cursor t
     helm-gtags-fuzzy-match t
     helm-gtags-display-style 'detail
     helm-gtags-highlight-candidate t
     helm-gtags-fuzzy-match t)
    )
  :config
  (progn
    (helm-gtags-mode 1)))

;;; projectile configuration
(use-package projectile
  :pin melpa-stable
  :ensure t
  :diminish projectile-mode
  :bind
  (("C-c g" . projectile-use-git-grep))
  :init
  (progn
    (setq projectile-enable-caching t
	  projectile-completion-system 'helm
	  projectile-use-native-indexing t
	  projectile-use-git-grep t)
    (projectile-global-mode t)
    (use-package helm-projectile
      :pin melpa-stable
      :ensure t
      :bind
      (("C-c h" . helm-projectile)
       ("s-r" . helm-projectile-recentf)
       ("s-g" . helm-git-grep-at-point)
       ("s-f" . helm-projectile-find-file-dwim))
      :init
      (progn
	(setq
	 helm-candidate-number-limit 100
	 helm-projectile-fuzzy-match t))
      :config
      (progn
	(helm-projectile-on)))))

;;; rainbow-identifiers
(use-package rainbow-identifiers
  :pin melpa-stable
  :ensure t
  :init
  (progn
    (setq rainbow-identifiers-faces-to-override
	  '(font-lock-type-face font-lock-variable-name-face))
    (setq rainbow-identifiers-choose-face-function
	  'rainbow-identifiers-cie-l*a*b*-choose-face)
    (setq rainbow-identifiers-face-count 128)
    (setq rainbow-identifiers-cie-l*a*b*-lightness 55)
    (setq rainbow-identifiers-cie-l*a*b*-saturation 55)
    (setq rainbow-identifiers-faces-to-override
	  '(font-lock-type-face
	    font-lock-variable-name-face
	    font-lock-function-name-face)))
  :config
  (progn
    (add-hook 'prog-mode-hook 'rainbow-identifiers-mode)))

;;; elisp env

;;; Enable paredit (only for eLisp mode)
(use-package paredit
  :pin melpa-stable
  :ensure t
  :defer t
  :commands lisp-mode
  :diminish paredit-mode
  :init
  (progn
    (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
    (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
    (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
    (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
    (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
    (add-hook 'scheme-mode-hook           #'enable-paredit-mode)))

(use-package iedit :ensure t)

(use-package company-irony
  :pin melpa-stable
  :ensure company
  :init
  (use-package irony
    :ensure t
    :diminish irony-mode
    :config
    (progn
      (add-hook 'c++-mode-hook 'irony-mode)
      (add-hook 'c-mode-hook 'irony-mode)
      (add-hook 'cc-mode-hook 'irony-mode)
      ;; (add-hook 'asm-mode-hook 'irony-mode)
      ))
  :config
  (progn
    (add-to-list 'company-backends 'company-irony)
    (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)))

;;; Common keybindings for progmode
(global-set-key (kbd "C-c w") 'whitespace-mode)


(provide 'prog-mode-init)
