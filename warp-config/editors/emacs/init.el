(setq custom-enabled-themes '(warp-dark))

(setq default-frame-alist
      (append (list
               '(background-color . "#000000")
               '(foreground-color . "#ffffff")
               '(cursor-color . "#00c2ff")
               '(mouse-color . "#00c2ff")
               '(border-color . "#1a1a1a")
               '(frame-background-mode . dark))
              default-frame-alist))

(set-face-attribute 'default nil
                    :background "#000000"
                    :foreground "#ffffff"
                    :font "JetBrains Mono-14")

(set-face-attribute 'cursor nil
                    :background "#00c2ff"
                    :foreground "#000000")

(set-face-attribute 'fringe nil
                    :background "#000000"
                    :foreground "#808080")

(set-face-attribute 'mode-line nil
                    :background "#0a0a0a"
                    :foreground "#808080"
                    :box nil)

(set-face-attribute 'mode-line-inactive nil
                    :background "#0a0a0a"
                    :foreground "#4a4a4a"
                    :box nil)

(set-face-attribute 'vertical-border nil
                    :background "#000000"
                    :foreground "#1a1a1a")

(set-face-attribute 'minibuffer-prompt nil
                    :foreground "#00c2ff"
                    :weight 'bold)

(set-face-attribute 'region nil
                    :background "#00c2ff2a")

(set-face-attribute 'highlight nil
                    :background "#00c2ff2a")

(set-face-attribute 'isearch nil
                    :background "#ff8ffd"
                    :foreground "#000000")

(set-face-attribute 'lazy-highlight nil
                    :background "#00c2ff1a")

(set-face-attribute 'font-lock-comment-face nil
                    :foreground "#616161"
                    :italic t)

(set-face-attribute 'font-lock-keyword-face nil
                    :foreground "#00c2ff")

(set-face-attribute 'font-lock-string-face nil
                    :foreground "#b4fa72")

(set-face-attribute 'font-lock-number-face nil
                    :foreground "#fefdc2")

(set-face-attribute 'font-lock-constant-face nil
                    :foreground "#fefdc2")

(set-face-attribute 'font-lock-function-name-face nil
                    :foreground "#d0d1fe")

(set-face-attribute 'font-lock-variable-name-face nil
                    :foreground "#ffffff")

(set-face-attribute 'font-lock-type-face nil
                    :foreground "#fefdc2")

(set-face-attribute 'font-lock-property-name-face nil
                    :foreground "#c1e3fe")

(set-face-attribute 'font-lock-tag-face nil
                    :foreground "#ff8272")

(set-face-attribute 'font-lock-attribute-name-face nil
                    :foreground "#ff8ffd"
                    :italic t)

(set-face-attribute 'font-lock-preprocessor-face nil
                    :foreground "#00c2ff")

(set-face-attribute 'font-lock-operator-face nil
                    :foreground "#a5d5fe")

(setq display-line-numbers-type 'relative)

(global-display-line-numbers-mode 1)

(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

(setq-default fill-column 80)

(blink-cursor-mode 0)

(setq visible-cursor nil)

(setq x-underline-at-descent-line t)

(provide 'init-warp-dark)
