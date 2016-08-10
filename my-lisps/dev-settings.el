;;; dev-settings --- set my development
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-07-10 20:52:40 zqy>
;;; code:

(require 'util)

(require 'compile-misc)

(require 'template-settings)

(require 'c-settings)

(require 'java-settings)

(require 'js-settings)

; (require 'slime-settings)

(require 'verilog-settings)

(require 'latex-settings)

(require 'dos)

(require 'shell-settings)

(require 'assembly-settings)

(require 'flycheck-settings)

(require 'web-settings)

(require 'w3m-settings)

; (require 'java-settings)

; (require 'sql-settings)

(require 'python-settings)

(require 'matlab-settings)

(require 'macros-settings)

(require 'evernote-settings)

(require 'markdown-settings)

(require 'wakatime-settings)

(require 'cedet-semantic-settings)

(require 'idle-highlight-settings)


; (show-paren-mode t) ; show the paren
; ;; open hs-minor-mode
; (am-add-hooks
; `(c-mode-common-hook lisp-mode-hook emacs-lisp-mode-hook java-mode-hook
;                       js-mode-hook)
;  'hs-minor-mode)



;; 自动括号补全
; (require 'electric)
; (electric-pair-mode t)
; ; 输入左大花扩号自动补齐右大花括号
; (eal-define-keys
;  `(c-mode-base-map awk-mode-map java-mode-map)
;  `(("{" skeleton-c-mode-left-brace)))
;  
; (defun skeleton-c-mode-left-brace (arg)
;   "Function for autocomplete left brace using ARG."
;   (interactive "P")
;   (if  (c-in-literal (c-most-enclosing-brace (c-parse-state)))
;       (self-insert-command 1)
;     ;; auto insert complex things.
;     (let* ((current-line (delete-and-extract-region (line-beginning-position) (line-end-position)))
;            (lines (and arg (mark t) (delete-and-extract-region (mark t) (point))))
;            (after-point (make-marker)))
;        ;;; delete extra blank begin and after the LINES
;       (setq lines (and lines
;                        (with-temp-buffer
;                          (insert lines)
;                          (beginning-of-buffer)
;                          (delete-blank-lines)
;                          (delete-blank-lines)
;                          (end-of-buffer)
;                          (delete-blank-lines)
;                          (delete-blank-lines)
;                          (buffer-string))))
;       (save-excursion
;         (let* ((old-point (point)))
;           (insert (if current-line current-line "")  "{\n")
;           (and lines (insert lines))
;           (move-marker after-point (point))
;           (insert "\n}")
;           (indent-region old-point (point) nil)))
;       (goto-char after-point)
;       (c-indent-line))))


; (eal-define-keys
;  `(lisp-mode-map emacs-lisp-mode-map lisp-interaction-mode-map
;                  sh-mode-map java-mode-map ruby-mode-map
;                  c-mode-base-map tcl-mode-map org-mode-map
;                  python-mode-map perl-mode-map Javascript-mode-map
;                  html-mode-map)
;  `(("RET" newline-and-indent)))

(provide 'dev-settings)
;;; dev-settings.el ends here
