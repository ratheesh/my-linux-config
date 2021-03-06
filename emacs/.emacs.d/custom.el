(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (mytheme-dark)))
 '(elfeed-feeds
   (quote
    ("http://feeds.macrumors.com/MacRumors-Front" "www.shakthimaan.com/news.xml"
     ("http://www.shakthimaan.com/news.xml" people)
     ("http://feeds.macrumors.com/MacRumors-Front" Apple))))
 '(flymake-python-pyflakes-executable "flake8")
 '(nyan-animate-nyancat t)
 '(nyan-animation-frame-interval 0.1)
 '(nyan-bar-length 24)
 '(nyan-wavy-trail t)
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/tasks_at_work.org" "~/Dropbox/org/janus.org" "~/Dropbox/org/routines.org")))
 '(powerline-default-separator (quote arrow))
 '(powerline-height nil)
 '(powerline-text-scale-factor 0.97)
 '(senator-highlight-found t)
 '(sml/show-remote t)
 '(visible-cursor t)
 '(which-func-modes t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter+-separator ((t (:foreground "yellow" :weight light))))
 '(indent-guide-face ((t (:foreground "#535353"))))
 '(mode-line ((t (:background "black" :foreground "white" :inverse-video nil :box (:line-width 1 :color "goldenrod4") :weight light :height 130))))
 '(mode-line-buffer-id ((t (:foreground "#00bfff" :weight light))))
 '(mode-line-emphasis ((t (:weight light))))
 '(mode-line-highlight ((t (:box (:line-width 1 :color "grey40" :weight light)))))
 '(mode-line-modified ((t (:inherit sml/not-modified :foreground "#ff0000" :weight light))))
 '(nyanmode-active ((t (:inherit mode-line :foreground "PeachPuff4" :background "PeachPuff4" :weight light))))
 '(persp-selected-face ((t (:inherit sml/filename :foreground "lawn green"))))
 '(powerline-active1 ((t (:inherit mode-line :background "grey22" :foreground "gold" :weight light))))
 '(powerline-active2 ((t (:inherit mode-line :background "grey40" :foreground "gold1" :weight light))))
 '(sml/charging ((t (:inherit sml/global :foreground "ForestGreen" :weight light))))
 '(sml/client ((t (:inherit sml/prefix :weight light))))
 '(sml/col-number ((t (:inherit sml/global :weight light))))
 '(sml/discharging ((t (:inherit sml/global :foreground "Red" :weight light))))
 '(sml/filename ((t (:inherit sml/global :foreground "green" :slant italic :weight light))))
 '(sml/folder ((t (:inherit sml/global :weight light))))
 '(sml/git ((t (:inherit (sml/read-only sml/prefix) :weight light))))
 '(sml/global ((t (:inverse-video nil :weight light))))
 '(sml/line-number ((t (:inherit sml/modes :weight light))))
 '(sml/minor-modes ((t (:inherit sml/global :weight light))))
 '(sml/modes ((t (:inherit sml/global :weight light))))
 '(sml/modified ((t (:inherit sml/not-modified :foreground "Red" :weight light))))
 '(sml/name-filling ((t (:inherit sml/position-percentage :weight light))))
 '(sml/not-modified ((t (:inherit sml/global :weight light))))
 '(sml/projectile ((t (:inherit sml/git :foreground "dark orange" :weight light))))
 '(sml/read-only ((t (:inherit sml/not-modified :weight light))))
 '(sml/remote ((t (:inherit sml/global :weight light))))
 '(which-func ((t (:foreground "DeepSkyBlue1" :slant italic :weight light)))))
