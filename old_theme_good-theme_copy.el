(deftheme old_theme_good
  "Created 2016-01-26.")

(custom-theme-set-variables
 'old_theme_good
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(compilation-message-face (quote (quote default)))
 '(custom-safe-themes (quote ("852cb8bdb84bb950777f1823e8f961723e39e444cebb1132eddf049ecfc9abd8" "7f1263c969f04a8e58f9441f4ba4d7fb1302243355cb9faecb55aec878a06ee9" "022c0c3767084f8500ffc84e65a4f77b55254030b6b573f3d8125d10538a58ea" "26a762294d739d07ff2c532c66c1d6da2cd1cfea98c44c46ea4887322322dbbf" "ab463d27e850aa4e144fa35f7c30ec71748baf048b83b74148a5005c1d3cdb88" "6a605e71d0be1e0a71c79a7e5bd5b2014918e2edb74a3ea1512847e177932a87" "85b426d9421ec5bdb5459bfe8bab32ee5ecfeed8728a1aa78e9730e947bf79b5" default)))
 '(pdf-view-midnight-colors (quote ("light blue" . "gray7")))
 '(show-paren-mode t))

(custom-theme-set-faces
 'old_theme_good
 '(default ((t (:inherit nil :stipple nil :background "gray10" :foreground "light sky blue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 158 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(variable-pitch ((t (:family "Ubuntu Mono"))))
 '(font-lock-keyword-face ((t (:background "#272122" :foreground "yellow2"))))
 '(font-lock-type-face ((t (:background "#251c1e" :foreground "plum2" :weight normal))))
 '(highlight ((t (:background "#132228" :foreground "green1"))))
 '(link ((t (:background "#1e252f" :foreground "slate blue" :underline t))))
 '(region ((t (:background "lime green" :foreground "gold"))))
 '(show-paren-match ((t (:background "aquamarine" :foreground "medium violet red")))))

(provide-theme 'old_theme_good)
