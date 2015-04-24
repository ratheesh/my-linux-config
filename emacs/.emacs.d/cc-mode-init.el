;; cc-mode configuration

;; Required packages
(use-package cc-mode
  :ensure t
  :config
  (progn
    (setq
     c-set-style "linux"
     c-brace-offset -8
     c-basic-offset 8
     c-default-style "linux"
     tab-width 8
     indent-tabs-mode t)))

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (setq
	     fci-rule-column 80
	     show-trailing-whitespace)
	    (rainbow-delimiters-mode)
	    (fci-mode)
	    (flyspell-prog-mode)
	    (which-function-mode t)
	    (setq mode-name " ς/ι ")))

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
	      (ggtags-mode)
              (helm-gtags-mode 1))))

;;; no indent on ret key
(add-hook 'c-mode-hook
          (lambda ()
            (setq-local electric-indent-chars (remq ?\n electric-indent-chars))))

(use-package autopair
  :ensure t
  :diminish autopair-mode
  :init
  (progn
    (add-hook 'c-mode-common-hook #'(lambda () (autopair-mode)))))

(use-package whitespace
  :ensure t)

;;fci-column-indicator mode
(defun auto-fci-mode (&optional unused)
  (if (> (window-width) fci-rule-column)
      (fci-mode 1)
    (fci-mode 0)))

(use-package fill-column-indicator
  :ensure t
  :config
  (progn
    (setq
     fci-handle-truncate-lines nil
     fci-rule-width 1
     fci-rule-color "#71a19f")
    (setq-default  fci-rule-column 80)
    (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
    (add-hook 'after-change-major-mode-hook 'auto-fci-mode)
    (add-hook 'window-configuration-change-hook 'auto-fci-mode)))

(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(add-hook 'text-mode-hook 'turn-on-flyspell)

;;From Linux source
(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
	 (column (c-langelem-2nd-pos c-syntactic-element))
	 (offset (- (1+ column) anchor))
	 (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name)))
              ;; Enable kernel mode for the appropriate files
              (when (and filename
                         (string-match (expand-file-name "/")
                                       filename))
                (setq indent-tabs-mode t)
                (c-set-style "linux-tabs-only")))))

(use-package c-eldoc
  :ensure t
  :disabled t
  :ensure t
  :config
  (progn
    (eldoc-mode t)
    (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)))

;; auto complete configuration
(use-package auto-complete
  :ensure t
  :disabled t
  :diminish auto-complete-mode
  :config
  (use-package auto-complete-config
    :config
    (progn
      (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
      (setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
      (ac-config-default)
      (setq ac-auto-show-menu nil)
      (ac-set-trigger-key "TAB")
      (ac-set-trigger-key "<tab>")
      (global-auto-complete-mode t))))

(use-package ac-helm
  :disabled t
  :pin melpa-stable)

;;key chord config
(use-package key-chord
  :ensure t
  :config
  (progn
    (key-chord-mode 1)
    (key-chord-define-global "jj" 'ace-jump-word-mode) ;ace jump mode
    (key-chord-define c-mode-map ";;" "\C-e")) ;end of the line
  )

;;; dts file editing
(use-package dts-mode :ensure t :defer t)

;; ECB env settings - not using for now
(use-package ecb
  :ensure t
  :disabled t
  :bind
  (("\C-c(" . ecb-activate)
   ("\C-c)" . ecb-deactivate)
   ("\C-c1" . ecb-goto-window-edit1)
   ("\C-c2" . ecb-goto-window-directories)
   ("\C-c3" . ecb-goto-window-history))
  :config
  (progn
    (setq
     ecb-layout-name "rathy-dh-layout"
     ecb-show-sources-in-directories-buffer 'always
     ecb-compile-window-height nil)))

(use-package sr-speedbar
  :ensure t
  :disabled t
  :bind
  (("C-c C-s" . sr-speedbar-toggle)))

(provide 'cc-mode-init)
