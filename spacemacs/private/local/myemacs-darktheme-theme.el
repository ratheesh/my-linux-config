(deftheme myemacs-darktheme
  "Created 2016-03-11.")

 (custom-theme-set-variables
 'myemacs-darktheme
 '(fci-rule-color "#424242")
 '(ansi-color-names-vector ["#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"])
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold]))

(custom-theme-set-faces
 'myemacs-darktheme
 '(bold ((((class color) (min-colors 89)) (:weight bold))))
 '(bold-italic ((((class color) (min-colors 89)) (:slant italic :weight bold))))
 '(underline ((((class color) (min-colors 89)) (:underline t))))
 '(italic ((((class color) (min-colors 89)) (:slant italic))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "bisque4" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "bisque4" :slant italic))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(font-lock-regexp-grouping-backslash ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(font-lock-regexp-grouping-construct ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:weight bold :foreground "#d54e53"))))
 '(shadow ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(error ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(flycheck-error ((((class color) (min-colors 89)) (:underline (:style wave :color "#d54e53")))))
 '(flycheck-info ((((class color) (min-colors 89)) (:underline (:style wave :color "#70c0b1")))))
 '(flycheck-warning ((((class color) (min-colors 89)) (:underline (:style wave :color "#e78c45")))))
 '(flycheck-fringe-error ((((class color) (min-colors 89)) (:foreground "#d54e53" :background "#d54e53"))))
 '(flycheck-fringe-info ((((class color) (min-colors 89)) (:foreground "#70c0b1" :background "#70c0b1"))))
 '(flycheck-fringe-warning ((((class color) (min-colors 89)) (:foreground "#e78c45" :background "#e78c45"))))
 '(rainbow-delimiters-depth-1-face ((((class color) (min-colors 89)) (:foreground "#eaeaea"))))
 '(rainbow-delimiters-depth-2-face ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(rainbow-delimiters-depth-3-face ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(rainbow-delimiters-depth-4-face ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(rainbow-delimiters-depth-5-face ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(rainbow-delimiters-depth-6-face ((((class color) (min-colors 89)) (:foreground "#eaeaea"))))
 '(rainbow-delimiters-depth-7-face ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(rainbow-delimiters-depth-8-face ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(rainbow-delimiters-depth-9-face ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(rainbow-delimiters-unmatched-face ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(match ((((class color) (min-colors 89)) (:foreground "#7aa6da" :background "#000000" :inverse-video t))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#e7c547" :background "#000000" :inverse-video t))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:foreground "#70c0b1" :background "#000000" :inverse-video t))))
 '(isearch-fail ((((class color) (min-colors 89)) (:background "#000000" :inherit font-lock-warning-face :inverse-video t))))
 '(anzu-mode-line ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(anzu-replace-highlight ((((class color) (min-colors 89)) (:inherit isearch-lazy-highlight-face))))
 '(anzu-replace-to ((((class color) (min-colors 89)) (:inherit isearch))))
 '(ido-subdir ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(ido-first-match ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(ido-only-match ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(ido-indicator ((((class color) (min-colors 89)) (:foreground "#d54e53" :background "#000000"))))
 '(ido-virtual ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(flx-highlight-face ((((class color) (min-colors 89)) (:inherit nil :foreground "#e7c547" :weight bold :underline nil))))
 '(which-func ((((class color) (min-colors 89)) (:foreground "#7aa6da" :background nil :weight bold))))
 '(cursor ((t (:background "white"))))
 '(fringe ((((class color) (min-colors 89)) (:background "#424242" :foreground "#eaeaea"))))
 '(linum ((((class color) (min-colors 89)) (:background "#424242" :foreground "#b9ca4a" :italic nil))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#2a2a2a"))))
 '(border ((((class color) (min-colors 89)) (:background "#424242" :foreground "#2a2a2a"))))
 '(highlight ((((class color) (min-colors 89)) (:inverse-video nil :background "#2a2a2a"))))
 '(mode-line ((((class color) (min-colors 89)) (:foreground nil :background "#424242" :weight normal :box (:line-width 1 :color "#969896")))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:foreground "#FFCE12" :background nil))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:inherit mode-line :foreground "#969896" :background "#424242" :weight normal :box (:line-width 1 :color "#424242")))))
 '(mode-line-emphasis ((((class color) (min-colors 89)) (:foreground "#eaeaea" :slant italic))))
 '(mode-line-highlight ((((class color) (min-colors 89)) (:foreground "#c397d8" :box nil :weight bold))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(region ((((class color) (min-colors 89)) (:background "#424242" :inverse-video nil))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#2a2a2a"))))
 '(header-line ((((class color) (min-colors 89)) (:inherit mode-line :foreground "#c397d8" :background nil))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#e78c45" :foreground "#e7c547"))))
 ;; '(show-paren-match ((((class color) (min-colors 89)) (:background "#c397d8" :foreground "#000000"))))
 '(show-paren-match ((((class color) (min-colors 89)) (:underline t :weight bold))))
 '(show-paren-mismatch ((((class color) (min-colors 89)) (:background "#d54e53" :foreground "#000000"))))
 '(sp-show-pair-match-face ((((class color) (min-colors 89)) (:foreground nil :background nil :inherit show-paren-match))))
 '(sp-show-pair-mismatch-face ((((class color) (min-colors 89)) (:foreground nil :background nil :inherit show-paren-mismatch))))
 '(diff-added ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(diff-changed ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(diff-removed ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(diff-header ((((class color) (min-colors 89)) (:foreground "#70c0b1" :background nil))))
 '(diff-file-header ((((class color) (min-colors 89)) (:foreground "#7aa6da" :background nil))))
 '(diff-hunk-header ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(diff-refine-added ((((class color) (min-colors 89)) (:inherit diff-added :inverse-video t))))
 '(diff-refine-removed ((((class color) (min-colors 89)) (:inherit diff-removed :inverse-video t))))
 '(diff-hl-insert ((((class color) (min-colors 89)) (:foreground "#00ff00" :background "#00ff00"))))
 '(diff-hl-change ((((class color) (min-colors 89)) (:foreground "#969896" :background "#969896"))))
 '(diff-hl-delete ((((class color) (min-colors 89)) (:foreground "#ff0000" :background "#ff0000"))))
 '(eldoc-highlight-function-argument ((((class color) (min-colors 89)) (:foreground "#b9ca4a" :weight bold))))
 '(undo-tree-visualizer-default-face ((((class color) (min-colors 89)) (:foreground "#eaeaea"))))
 '(undo-tree-visualizer-current-face ((((class color) (min-colors 89)) (:foreground "#b9ca4a" :weight bold))))
 '(undo-tree-visualizer-active-branch-face ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(undo-tree-visualizer-register-face ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(magit-header-line ((((class color) (min-colors 89)) (:inherit nil :weight bold))))
 '(magit-dimmed ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(magit-hash ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(magit-tag ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(magit-branch-local ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(magit-branch-remote ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(magit-branch-current ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(magit-refname ((((class color) (min-colors 89)) (:inherit comment))))
 '(magit-signature-good ((((class color) (min-colors 89)) (:inherit success))))
 '(magit-signature-bad ((((class color) (min-colors 89)) (:inherit error))))
 '(magit-signature-untrusted ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(magit-cherry-equivalent ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(magit-log-graph ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(magit-log-author ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(magit-log-date ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(magit-process-ok ((((class color) (min-colors 89)) (:inherit success))))
 '(magit-process-ng ((((class color) (min-colors 89)) (:inherit error))))
 '(magit-section-heading ((((class color) (min-colors 89)) (:foreground "#e7c547" :weight bold))))
 '(magit-section-heading-selection ((((class color) (min-colors 89)) (:foreground "#e78c45" :weight bold))))
 '(magit-section-highlight ((((class color) (min-colors 89)) (:inherit highlight))))
 '(git-gutter:modified ((((class color) (min-colors 89)) (:foreground "#c397d8" :weight bold))))
 '(git-gutter:added ((((class color) (min-colors 89)) (:foreground "#b9ca4a" :weight bold))))
 '(git-gutter:deleted ((((class color) (min-colors 89)) (:foreground "#d54e53" :weight bold))))
 '(git-gutter:unchanged ((((class color) (min-colors 89)) (:background "#e7c547"))))
 '(git-gutter-fr:modified ((((class color) (min-colors 89)) (:foreground "#c397d8" :weight bold))))
 '(git-gutter-fr:added ((((class color) (min-colors 89)) (:foreground "#b9ca4a" :weight bold))))
 '(git-gutter-fr:deleted ((((class color) (min-colors 89)) (:foreground "#d54e53" :weight bold))))
 '(link ((((class color) (min-colors 89)) (:foreground nil :underline t))))
 '(widget-button ((((class color) (min-colors 89)) (:underline t))))
 '(widget-field ((((class color) (min-colors 89)) (:background "#424242" :box (:line-width 1 :color "#eaeaea")))))
 '(compilation-column-number ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(helm-buffer-saved-out ((((class color) (min-colors 89)) (:inherit warning))))
 '(helm-buffer-size ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(helm-buffer-not-saved ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(helm-buffer-process ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(helm-buffer-directory ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(helm-ff-directory ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(helm-candidate-number ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(helm-match ((((class color) (min-colors 89)) (:inherit match))))
 '(helm-selection ((((class color) (min-colors 89)) (:inherit highlight))))
 '(helm-separator ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(helm-source-header ((((class color) (min-colors 89)) (:weight bold :foreground "#e78c45" :height 1.44))))
 '(company-preview ((((class color) (min-colors 89)) (:foreground "light gray" :background "gray33"))))
 '(company-preview-common ((((class color) (min-colors 89)) (:inherit company-preview))))
 '(company-preview-search ((((class color) (min-colors 89)) (:inherit company-preview :foreground "#7aa6da"))))
 '(company-tooltip ((((class color) (min-colors 89)) (:foreground "light gray" :background "gray33"))))
 '(company-tooltip-selection ((((class color) (min-colors 89)) (:foreground "light gray" :background "khaki4"))))
 '(company-tooltip-common ((((class color) (min-colors 89)) (:inherit company-tooltip :foreground "#000000"))))
 '(company-tooltip-common-selection ((((class color) (min-colors 89)) (:inherit company-tooltip-selection :foreground "firebrick4"))))
 '(company-tooltip-search ((((class color) (min-colors 89)) (:inherit company-tooltip :foreground "khaki4"))))
 '(company-tooltip-annotation ((((class color) (min-colors 89)) (:foreground "light gray"))))
 '(company-scrollbar-bg ((((class color) (min-colors 89)) (:inherit (quote company-tooltip) :background "#2a2a2a"))))
 '(company-scrollbar-fg ((((class color) (min-colors 89)) (:background "#424242"))))
 '(company-echo-common ((((class color) (min-colors 89)) (:inherit company-echo :foreground "firebrick4"))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#7aa6da" :underline nil))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(org-agenda-dimmed-todo-face ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(org-block ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#e7c547"))))
 '(org-column ((((class color) (min-colors 89)) (:background "#424242"))))
 '(org-column-title ((((class color) (min-colors 89)) (:inherit org-column :weight bold :underline t))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#7aa6da" :underline t))))
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(org-document-info-keyword ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(org-document-title ((((class color) (min-colors 89)) (:weight bold :foreground "#e78c45" :height 1.44))))
 '(org-done ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#969896"))))
 '(org-footnote ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#000000" :background "#000000"))))
 '(org-link ((((class color) (min-colors 89)) (:foreground "#7aa6da" :underline t))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground ">#e78c45"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(org-table ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(org-todo ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(org-warning ((((class color) (min-colors 89)) (:weight bold :foreground "#d54e53"))))
 '(hydra-face-blue ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(hydra-face-teal ((((class color) (min-colors 89)) (:foreground "#70c0b1"))))
 '(hydra-face-pink ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(hydra-face-red ((((class color) (min-colors 89)) (:foreground "#d54e53"))))
 '(hydra-face-amaranth ((((class color) (min-colors 89)) (:foreground "#e78c45"))))
 '(message-header-other ((((class color) (min-colors 89)) (:foreground nil :background nil :weight normal))))
 '(message-header-subject ((((class color) (min-colors 89)) (:inherit message-header-other :weight bold :foreground "#e7c547"))))
 '(message-header-to ((((class color) (min-colors 89)) (:inherit message-header-other :weight bold :foreground "#e78c45"))))
 '(message-header-cc ((((class color) (min-colors 89)) (:inherit message-header-to :foreground nil))))
 '(message-header-name ((((class color) (min-colors 89)) (:foreground "#7aa6da" :background nil))))
 '(message-header-newsgroups ((((class color) (min-colors 89)) (:foreground "#70c0b1" :background nil :slant normal))))
 '(message-separator ((((class color) (min-colors 89)) (:foreground "#c397d8"))))
 '(powerline-active1 ((((class color) (min-colors 89)) (:foreground "#eaeaea" :background "#2a2a2a"))))
 '(powerline-active2 ((((class color) (min-colors 89)) (:foreground "#eaeaea" :background "#424242"))))
 '(outline-1 ((((class color) (min-colors 89)) (:inherit nil :foreground "#7aa6da"))))
 '(outline-2 ((((class color) (min-colors 89)) (:inherit nil :foreground "#c397d8"))))
 '(outline-3 ((((class color) (min-colors 89)) (:inherit nil :foreground "#70c0b1"))))
 '(outline-4 ((((class color) (min-colors 89)) (:inherit nil :foreground "#e7c547"))))
 '(outline-5 ((((class color) (min-colors 89)) (:inherit nil :foreground "#e78c45"))))
 '(outline-6 ((((class color) (min-colors 89)) (:inherit nil :foreground "#7aa6da"))))
 '(outline-7 ((((class color) (min-colors 89)) (:inherit nil :foreground "#c397d8"))))
 '(outline-8 ((((class color) (min-colors 89)) (:inherit nil :foreground "#70c0b1"))))
 '(custom-variable-tag ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(custom-group-tag ((((class color) (min-colors 89)) (:foreground "#7aa6da"))))
 '(custom-state ((((class color) (min-colors 89)) (:foreground "#b9ca4a"))))
 '(default ((((class color) (min-colors 89)) (:foreground "#eaeaea" :background "#000000")))))

(provide-theme 'myemacs-darktheme)
