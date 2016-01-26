(deftheme razg-222
  "Created 2015-12-17.")

(custom-theme-set-variables
 'razg-222
 '(ansi-color-names-vector ["#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes (quote ("95db78d85e3c0e735da28af774dfa59308db832f84b8a2287586f5b4f21a7a5b" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "c86f868347919095aa44d2a6129dd714cbcf8feaa88ba954f636295b14ceff8f" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))

(custom-theme-set-faces
 'razg-222
 '(default ((t (:inherit nil :stipple nil :background "gray10" :foreground "light sky blue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 158 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(font-lock-keyword-face ((t (:background "#272122" :foreground "yellow2"))))
 '(font-lock-type-face ((t (:background "#251c1e" :foreground "plum2" :weight normal))))
 '(highlight ((t (:background "#132228" :foreground "green1"))))
 '(link ((t (:background "#1e252f" :foreground "slate blue" :underline t))))
 '(region ((t (:background "lime green" :foreground "gold"))))
 '(show-paren-match ((t (:background "aquamarine" :foreground "medium violet red")))))

(provide-theme 'razg-222)
