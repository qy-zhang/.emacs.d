;;; all-complete-settings --- complete misc
;;; Commentary:
;; -*- Emacs-Lisp -*-

;; Time-stamp: <2014-07-12 21:09:54 dimzqy>
;;; Code:

(require 'hippie-expand-settings)

; (require 'auto-complete-settings)

(require 'yasnippet-settings)

;; use smex to input commands
(require 'smex-settings)



;; 用M-x执行某个命令的时候，在输入的同时给出可选的命令名提示
(require 'my-icomplete+)
(icomplete-mode 1)


(ido-mode t) ; open ido mode by default


(global-company-mode t)


;; tab setting
;; 先格式化再补全
(setq tab-always-indent 'complete)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)


(provide 'all-complete-settings)
;;; all-complete-settings.el ends here
