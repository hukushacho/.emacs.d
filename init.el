;;--------------------------------------------------
;; Global key binding
;;--------------------------------------------------

(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)
(global-set-key "\C-o" 'open-line)

;; ---------------------------------------------------------
;; YATEX の設定
;; ---------------------------------------------------------
   
;; Add library path
(add-to-list 'load-path "~/.emacs.d/site-lisp/yatex/yatex1.78.4")
;; YaTeX mode
(setq auto-mode-alist
    (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq tex-command "platex")
(setq dviprint-command-format "dvipdfmx %s")
;; use Preview.app
(setq dvi2-command "open -a Preview")
(defvar YaTeX-dvi2-command-ext-alist    
  '(("xdvi" . ".dvi")                   
      ("ghostview\\|gv" . ".ps")
      ("acroread\\|pdf\\|Preview\\|open" . ".pdf")))

;; Disable backup files

(setq make-backup-files nil)

;;--------------------------------------------------
;; web-mode configuration
;;--------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/site-lisp/web-mode")

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.jsp$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))

(defun web-mode-hook ()
  "Hooks for Web mode."

  ;; indent
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-html-offset   2)
  (setq web-mode-style-padding 2)
  (setq web-mode-css-offset    2)
  (setq web-mode-script-offset 2)
  (setq web-mode-java-offset   2)
  (setq web-mode-asp-offset    2)

  (local-set-key (kbd "C-m") 'newline-and-indent)

  ;; auto tag closing
  
  ;0=no auto-closing
  ;1=auto-close with </
  ;2=auto-close with > and </

  (setq web-mode-enable-auto-closing t)
  (setq web-mode-tag-auto-close-style 1)

  ;; tag color

  (set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "#FF7400")
)

(add-hook 'web-mode-hook 'web-mode-hook)
