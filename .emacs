;; (when (>= emacs-major-version 24)
;;   (require 'package)
;;   (add-to-list
;;    'package-archives
;;    '("melpa" . "http://melpa.org/packages/")
;;    t)

;;   (package-initialize)
;;   )

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

 (package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"))
 '(ansi-term-color-vector
   [unspecified "#1e1e1e" "#cf6a4c" "#8f9d6a" "#f9ee98" "#7587a6" "#9b859d" "#7587a6" "#a7a7a7"])
 '(custom-enabled-themes (quote (old_theme_good)))
 '(custom-safe-themes
   (quote
    ("68cda27ebca856c28a818b678bfc31a11d84821a6af90369b2d5c39e111903ec" "f836b41ffcd97bac50373e5cc4d2440e8c76e7ec302133686d97b312d827e060" "d43120398682953ef18fd7e11e69c94e44d39bb2ab450c4e64815311542acbff" "40741c04ba116ae965df184794597f62ae5a3c5ee6519097506f3a3b54552dd2" "cb18233197cedab557c70d171b511bed49cc702f428750925280090c31498bd2" "0aca3a26459bbb43a77f34bc22851c05c0a5d70d3230cbcdbda4fec20fef77e6" "91fba9a99f7b64390e1f56319c3dbbaed22de1b9676b3c73d935bf62277b799c" "d1a42ed39a15a843cccadf107ee0242b5f78bfbb5b70ba3ce19f3ea9fda8f52d" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "1edf370d2840c0bf4c031a044f3f500731b41a3fd96b02e4c257522c7457882e" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "e2e4e109357cfcebccb17961950da6b84f72187ade0920a4494013489df648fe" "cdfb22711f64d0e665f40b2607879fcf2607764b2b70d672ddaa26d2da13049f" "18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" "85b426d9421ec5bdb5459bfe8bab32ee5ecfeed8728a1aa78e9730e947bf79b5" "561ba4316ba42fe75bc07a907647caa55fc883749ee4f8f280a29516525fc9e8" "bf9f5c66dbd588a9042eeec8a24873e992b15cea63e558897caf5ff2e7d694cb" "4293fd804584b5ecbae43abb3e1d41240ae7781032577b3dfc321dc5df94422a" "662b969569c5c4cd9a0d2354bc1ae2ea545b77f54a5e0eb00fce8c03e00542d9" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "71c2a8ca3062641480d04ab1635e4a99487c70ecadb8f9288fedbeffaed1c6b6" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "8efcd5dd55a39c9e3f4d568b3b7e4ef3a47638baa6a9016cb9d244a183d134a8" default)))
 '(fci-rule-color "#424242")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "#e78c45")
     (60 . "#e7c547")
     (80 . "#b9ca4a")
     (100 . "#70c0b1")
     (120 . "#7aa6da")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "#e78c45")
     (200 . "#e7c547")
     (220 . "#b9ca4a")
     (240 . "#70c0b1")
     (260 . "#7aa6da")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "#e78c45")
     (340 . "#e7c547")
     (360 . "#b9ca4a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "light blue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 151 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "SlateBlue1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "dark turquoise"))))
 '(region ((t (:background "light sea green" :foreground "sandy brown"))))
 '(smilingbuddha-pink-face ((t (:foreground "coral2")))))


(pdf-tools-install)

(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean
(setq save-place-file "~/.emacs.d/saved-places")
(setq-default save-place t)                   ;; activate it for all buffers
(require 'saveplace)                          ;; get the package
(setq save-place-forget-unreadable-files nil)
					;start auto complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

(define-key global-map (kbd "C-c ;") 'iedit-mode)

(setq-default iedit-mode t)


(global-company-mode)
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)

(setq cider-repl-result-prefix "%=--> ")

;switching between buufers by shft+ u/d/r/l
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;(add-hook 'prog-mode-hook 'paredit-everywhere-mode)
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'slime-repl-mode-hook 'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
 ;; Stop SLIME's REPL from grabbing DEL,
          ;; which is annoying when backspacing over a '('
          (defun override-slime-repl-bindings-with-paredit ()
            (define-key slime-repl-mode-map
                (read-kbd-macro paredit-backward-delete-key) nil))
          (add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)


(eval-after-load "paredit.el"
   '(require 'paredit-menu))

;put newline if ret pressed between end patherless

(defvar electrify-return-match
    "[\]}\)\"]"
    "If this regexp matches the text after the cursor, do an \"electric\"
  return.")
(defun electrify-return-if-match (arg)
    "If the text after the cursor matches `electrify-return-match' then
  open and indent an empty line between the cursor and the text.  Move the
  cursor to the new line."
    (interactive "P")
    (let ((case-fold-search nil))
      (if (looking-at electrify-return-match)
	  (save-excursion (newline-and-indent)))
      (newline arg)
      (indent-according-to-mode)))
 ;; Using local-set-key in a mode-hook is a better idea.
  (global-set-key (kbd "RET") 'electrify-return-if-match)




;:4 iedit-mode autoenable
(define-key global-map (kbd "C-c ;") 'iedit-mode)


(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'REPL-mode-hook #'rainbow-delimiters-mode)



(add-hook 'clojure-mode-hook 'iedit-mode)
(add-hook 'c-mode-hook 'enable-paredit-mode)
(add-hook 'c++-mode-hook 'enable-paredit-mode)



(require 'linum)

(defvar linum-current-line 1 "Current line number.")
(defvar linum-border-width 1 "Border width for linum.")

(defface linum-current-line
  `((t :inherit linum
       :foreground "goldenrod"
       :weight bold
       ))
  "Face for displaying the current line number."
  :group 'linum)

(defadvice linum-update (before advice-linum-update activate)
  "Set the current line."
  (setq linum-current-line (line-number-at-pos)
        ;; It's the same algorithm that linum dynamic. I only had added one
        ;; space in front of the first digit.
        linum-border-width (number-to-string
                            (+ 1 (length
                                  (number-to-string
                                   (count-lines (point-min) (point-max))))))))

(defun linum-highlight-current-line (line-number)
  "Highlight the current line number using `linum-current-line' face."
  (let ((face (if (= line-number linum-current-line)
                  'linum-current-line
                'linum)))
    (propertize (format (concat "%" linum-border-width "d") line-number)
                'face face)))

(setq linum-format 'linum-highlight-current-line)



(add-hook 'c-mode-hook #'linum-on)
(add-hook 'c++-mode-hook  #'linum-on)

(add-hook 'clojure-mode #'linum-on)
(add-hook 'clojure-mode-hook  #'linum-on)



(define-minor-mode smilingbuddha-mode
  "Minor mode for highlighting numbers."
  :group 'smilingbuddha
  :lighter " :)"
  (cond
    (smilingbuddha-mode
      (when (not (or font-lock-mode global-font-lock-mode))
        (font-lock-mode 1))
      (font-lock-add-keywords nil
        (list (list "\\([0-9]+\\)" '(0 'smilingbuddha-pink-face t)) ))
      (message "Turned ON `smilingbuddha-mode`."))
    ((not smilingbuddha-mode)
      (font-lock-remove-keywords nil
        (list (list "\\([0-9]+\\)" '(0 'smilingbuddha-pink-face t)) ))
      (font-lock-fontify-buffer)
      (message "Turned OFF `smilingbuddha-mode`."))))

(defgroup smilingbuddha nil
  "Highlight numbers."
  :version "0.1"
  :group 'smilingbuddha)

(defface smilingbuddha-pink-face
  '((t (:foreground "black" :background "pink")))
  "Face for `smilingbuddha-pink-face`."
  :group 'smilingbuddha)

(defun turn-on-smilingbuddha-mode ()
(interactive)
  (smilingbuddha-mode 1))

(defun turn-off-smilingbuddha-mode ()
(interactive)
  (smilingbuddha-mode -1))

(define-globalized-minor-mode global-smilingbuddha-mode
  smilingbuddha-mode turn-on-smilingbuddha-mode)
;; (global-smilingbuddha-mode)


(add-hook 'c-mode-hook 'smilingbuddha-mode)
(add-hook 'c++-mode-hook  'smilingbuddha-mode)


; start flymake-google-cpplint-load
; let's define a function for flymake initialization

; start flymake-google-cpplint-load
; let's define a function for flymake initialization

(defun my:flymake-google-init () 
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook #'linum-on)
(add-hook 'python-mode-hook #'elpy-mode)
;(add-hook 'python-mode-hook 'jedi:ac-setup)



;; ; python-mode
;; (setq py-install-directory "~/.emacs.d/python-mode-6.0.11")
;; (add-to-list 'load-path py-install-directory)
;; (require 'python-mode)

;; ; use IPython
; (setq-default py-shell-name "ipython")
; (setq-default py-which-bufname "IPython")
;; ; use the wx backend, for both mayavi and matplotlib
;; (setq py-python-command-args
;;    '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
;;  (setq py-force-py-shell-name-p t)

;; ;; ; switch to the interpreter after executing code
;;  (setq py-shell-switch-buffers-on-execute-p t)
;; (setq py-switch-buffers-on-execute-p t)
;; ;; ; don't split windows
;; (setq py-split-windows-on-execute-p nil)
;; ;; ; try to automagically figure out indentation
;;  (setq py-smart-indentation t)

;; ;; (defvar myPackages
;; ;;   '(better-defaults
;; ;;     elpy ;; add the elpy package
;;     ))

;; ;(require 'auto-virtualenv)
;; ;(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
;; ;(add-hook 'projectile-after-switch-project-hook 'auto-virtualenv-set-virtualenv)

;; (require 'flymake-python-pyflakes)
(setq python-shell-interpreter "ipython"
       python-shell-interpreter-args "-i")

