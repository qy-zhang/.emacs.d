;;; c-settings --- some basic setting for c
;;; Commentary:

;; Time-stamp:<2014-07-11 Friday by zqy>
;;; Code:

(require 'autopair)

(defun cc-mode-settings ()
  "Settings for 'cc-mode'."
  (defun c-mode-common-hook-settings ()
    (c-set-style "awk")
    (c-toggle-hungry-state))
  (add-hook 'c-mode-common-hook 'c-mode-common-hook-settings)
  
  (defun c-mode-auto-pair ()
    (interactive)
    (make-local-variable 'skeleton-pair-alist)
    (setq skeleton-pair-alist
               '((?\" _ "\"" >)
                 (?\' _ "\'" >)
                 (?\( _ ")" >)
                 (?\[ _ "]" >)
                 (?\{ \n > _ \n "}" >)))
    (setq skeleton-pair t)
    (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
    (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
    (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
    (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
;  (add-hook 'c-mode-common-hook 'c-mode-auto-pair)

  (add-hook 'c-mode-common-hook #'(lambda () (autopair-mode)))
  
  (add-hook 'c-mode-common-hook 'semantic-mode)
  
  (add-to-list 'auto-mode-alist '("\\.h$" . cc-mode)))

(eval-after-load "cc-mode"
  '(cc-mode-settings))

(provide 'c-settings)
;;; c-settings.el ends here
