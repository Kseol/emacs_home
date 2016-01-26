(deftheme 11
  "Created 2016-01-26.")

(custom-theme-set-variables
 '11
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"])
 '(custom-safe-themes (quote ("cfcb0e7aea19b0a70db7539226582bffa2e46368022c17273868c9d6336d9a2f" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "8efcd5dd55a39c9e3f4d568b3b7e4ef3a47638baa6a9016cb9d244a183d134a8" default)))
 '(pdf-view-midnight-colors (quote ("light blue" . "gray7"))))

(custom-theme-set-faces
 '11
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "light blue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 173 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "SlateBlue1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "dark turquoise")))))

(provide-theme '11)
