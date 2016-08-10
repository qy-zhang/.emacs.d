;;; java-settings --- java programming settings
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-10-24 23:53:10 Administrator>
;;; code:

;; (add-to-list 'load-path "~/.emacs.d/lisps/jdee/lisp/")
;;  
;; (autoload 'jde-mode "jde" "JDE mode." t)
;; (setq auto-mode-alist
;;       (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))
;;  
;; ; (add-hook 'jde-mode-hook 'auto-complete-mode)
;;  
;; (setq jde-help-remote-file-exists-function '("beanshell"))
;;  
;; (defun java-mode-setting ()
;;   "Settings for 'java-mode'."
;;   (defun java-create-compilation-buffer ()
;;     "Create compilateion buffer for java file."
;;     (interactive)
;;     (let ((file (buffer-file-name)))
;;       (let ((extension (file-name-extension file)))
;;         (if (equal extension "java")
;;             (get-buffer-create "*compilation*")))))
;;   (add-hook 'java-mode-hook 'java-create-compilation-buffer))
;;  
;;  
;;  
;; (eval-after-load "java-mode"
;;   '(java-mode-setting))

(provide 'java-settings)
;;; java-settings.el ends here
