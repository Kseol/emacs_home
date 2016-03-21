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
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes
   (quote
    ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "8efcd5dd55a39c9e3f4d568b3b7e4ef3a47638baa6a9016cb9d244a183d134a8" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "light blue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 173 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "SlateBlue1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "dark turquoise")))))


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

;hooks for phyton

(add-hook 'python-mode-hook  #'linum-on)
(add-hook 'python-mode-hook  #'elpy-mode)

;(elpy-use-ipython)
;(require 'ipython)

;(defun ipython ()
  ;  (interactive)
 ;   (term "/usr/bin/*ipython"))
;(when (executable-find "ipython")
; (setq python-shell-interpreter "ipython")

;(setq-default py-shell-name "ipython")
;(setq-default py-which-bufname "IPython")

(setq python-shell-interpreter "ipython"
       python-shell-interpreter-args "-i")

 (add-to-list 'load-path
                "~/path-to-yasnippet")
   (require 'yasnippet)
   (yas-global-mode 1)
;;;;;;;;;;;;;;;
;;; use popup menu for yas-choose-value
(require 'popup)

;; add some shotcuts in popup menu mode
(define-key popup-menu-keymap (kbd "M-n") 'popup-next)
(define-key popup-menu-keymap (kbd "TAB") 'popup-next)
(define-key popup-menu-keymap (kbd "<tab>") 'popup-next)
(define-key popup-menu-keymap (kbd "<backtab>") 'popup-previous)
(define-key popup-menu-keymap (kbd "M-p") 'popup-previous)

(defun yas-popup-isearch-prompt (prompt choices &optional display-fn)
  (when (featurep 'popup)
    (popup-menu*
     (mapcar
      (lambda (choice)
        (popup-make-item
         (or (and display-fn (funcall display-fn choice))
             choice)
         :value choice))
      choices)
     :prompt prompt
     ;; start isearch mode immediately
     :isearch t
     )))

(setq yas-prompt-functions '(yas-popup-isearch-prompt yas-ido-prompt yas-no-prompt))

(require 'flycheck)

;; (defun elpy-mode ()
;;   (when (require 'flycheck nil t)
;;     (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;     (add-hook 'elpy-mode-hook 'flycheck-mode))
;;   )
;выяснить как работает

;(add-hook 'python-mode-hook  #'flymake-nil)

;
;(add-hook 'python-mode-hook  #'flycheck-on)



; https://realpython.com/blog/python/emacs-the-best-python-editor/
; http://jupyter-notebook-beginner-guide.readthedocs.org/en/latest/what_is_jupyter.html
