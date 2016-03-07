;; ---------------------------------------------------------
;; YaTeX の設定
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

(add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))

