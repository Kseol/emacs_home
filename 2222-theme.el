(deftheme 2222
  "Created 2016-01-26.")

(custom-theme-set-variables
 '2222
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"])
 '(custom-safe-themes (quote ("4293fd804584b5ecbae43abb3e1d41240ae7781032577b3dfc321dc5df94422a" "662b969569c5c4cd9a0d2354bc1ae2ea545b77f54a5e0eb00fce8c03e00542d9" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "71c2a8ca3062641480d04ab1635e4a99487c70ecadb8f9288fedbeffaed1c6b6" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "8efcd5dd55a39c9e3f4d568b3b7e4ef3a47638baa6a9016cb9d244a183d134a8" default))))

(custom-theme-set-faces
 '2222
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "light blue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 173 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "SlateBlue1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "dark turquoise")))))

(provide-theme '2222)
