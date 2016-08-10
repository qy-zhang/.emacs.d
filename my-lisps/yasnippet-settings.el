;;; yasnippet-settings --- set yasnippet
;;; Commentary:

;; -*- Emacs-Lisp -*-

;; Time-stamp: <2014-07-10 21:07:06 zqy>
;;; Code:
(require 'yasnippet)

(yas-global-mode 1)
(defun yasnippet-settings ()
  "Settings for `yasnippet'."
  
  (setq yas-snippet-dirs
   (concat my-emacs-path "lisps/yasnippet/snippets")))

;;;###autoload

(eval-after-load "yasnippet"
  `(yasnippet-settings))

(provide 'yasnippet-settings)
;;; yasnippet-settings.el ends here
