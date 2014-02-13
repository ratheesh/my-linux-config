(deftheme mytheme-dark
  "My emacs 24 theme(dark)")

(custom-theme-set-faces
 'mytheme-dark
 '(default ((t (:width normal :weight normal :foreground "#ffffff" :background "#000000"))))
 '(cursor ((t (:background "white" :inverse-video t))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:weight bold :foreground "#ddaa6f"))))
 '(minibuffer-prompt ((t (:foreground "#e5786d"))))
 '(highlight ((t (:underline (:color foreground-color :style line) :foreground "#ffffff" :background "#454545"))))
 '(region ((t (:foreground "#f6f3e8" :background "#404040"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:foreground "#f6f3e8" :background "#333366"))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-builtin-face ((t (:foreground "#729fcf"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "#ffa07a" :background "#282828" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#e6a00f"))))
 '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
 '(font-lock-function-name-face ((t (:foreground "#edd400"))))
 '(font-lock-keyword-face ((t (:weight normal :foreground "#729fcf"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#ad7fa8"))))
 '(font-lock-type-face ((t (:weight normal :foreground "#92a65e"))))
 '(font-lock-variable-name-face ((t (:foreground "#ff4500"))))
 '(font-lock-warning-face ((t (:foreground "#ccaa8f" :inherit (error)))))
 '(font-lock-operator-face ((t (:foreground "#32cd32"))))
 '(button ((t (:foreground "#f6f3e8" :background "#333333" :inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "#8ac6f2"))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#e5786d" :inherit (link)))))
 '(fringe ((t (:background "#303030"))))
 '(header-line ((t (:box nil :foreground "#e7f6da" :background "#303030" :inherit (mode-line)))))
 '(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
 '(mode-line ((t (:box (:line-width -1 :color nil :style released-button) :inverse-video nil :foreground "black" :background "grey85"))))
 '(mode-line-buffer-id ((t (:foreground "#00bfff" :weight normal))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:weight light :box (:line-width -1 :color "grey40" :style nil) :inverse-video nil :foreground "grey20" :background "#fdf6e3" :inherit (mode-line)))))
 '(isearch ((t (:foreground "#857b6f" :background "#343434"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:foreground "#a0a8b0" :background "#384048"))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(show-paren-match-face ((t (:background "#404040"))))
 '(show-paren-mismatch-face ((t (:background "red"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#db7093"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#f4a460"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#ffff00"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#ff3e96"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#4eee94"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#00bfff"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#ff00ff"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#ff0000"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#ffff00"))))
 '(footnote-spaced-footnotes nil)
 '(git-gutter+-separator ((t (:foreground "yellow" :weight normal)))))

(provide-theme 'mytheme-dark)
