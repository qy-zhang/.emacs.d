;;; c-settings --- some basic setting for c
;;; Commentary:

;; Time-stamp:<2014-07-11 Friday by zqy>
;;; Code:

(require 'autopair)
(require 'cc-mode)

(defun c-mode-settings ()
  "Settings for 'c-mode'."
  (defun c-mode-common-hook-settings ()
    (c-set-style "awk")
    (c-toggle-hungry-state))
  
  (add-hook 'c-mode-common-hook 'c-mode-common-hook-settings)
  (add-hook 'c-mode-common-hook 'semantic-mode))


(eval-after-load "c-mode"
  '(c-mode-settings))

(provide 'c-settings)
;;; c-settings.el ends here
