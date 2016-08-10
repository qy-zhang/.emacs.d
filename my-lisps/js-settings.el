;;; js-settings --- JavaScript setting
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-07-15 23:45:30 zqy>
;;; code:

(require 'js2-mode)

; (autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js-mode-hook 'js2-minor-mode)

(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

; (customize-set-variable 'js2-indent-on-enter-key t)

;; (add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
;; (autoload 'javascript-mode "javascript" nil t)



(provide 'js-settings)
;;; js-settings.el ends here
