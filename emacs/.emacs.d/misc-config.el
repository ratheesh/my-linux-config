;;; This file has settings which are not strictly for development purpose

;;; keybinding help after a delay
(use-package guide-key
  :ensure t
  :diminish guide-key-mode
  :init
  (progn
    (setq guide-key/guide-key-sequence t))
  :config
  (progn
    (guide-key-mode)))

;;; perspective mode
(use-package perspective
  :ensure t
  :disabled t
  :config
  (progn
    (persp-mode)
    (use-package persp-projectile
      :ensure t
      :init
      (progn
	(define-key projectile-mode-map (kbd "s-s") 'projectile-persp-switch-project)))))

(use-package elfeed
  :ensure t
  :config
  (progn
    (global-set-key (kbd "C-x w") 'elfeed)
    (setq elfeed-feeds
          '(("http://www.shakthimaan.com/news.xml" people)))))

(provide 'misc-config)
