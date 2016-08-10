;;; w3m-settings --- emacs internal browser
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-12-04 13:59:44 Administrator>
;;; code:

(require 'util)
;(require 'w3m)


(defvar w3m-dir (concat my-emacs-lisps-path "w3m/") "Dir of w3m.")

(add-to-list 'exec-path '(concat my-emacs-lisps-path "w3m/"))

(defun w3m-settings ()
  "Settings for 'w3m'."

  (setq w3m-command-arguments '("-cookie" "-F"))
  (setq w3m-use-cookies t)
  (setq w3m-home-page "https://www.google.com.hk")
  (setq w3m-default-display-inline-images t)

)

;(eval-after-load "w3m" '(w3m-settings))

(provide 'w3m-settings)
;;; w3m-settings.el ends here










