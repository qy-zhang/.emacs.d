;;; template-settings --- template for new file
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-12-04 14:48:02 Administrator>
;;; code:

(auto-insert-mode) ; Adds hook to find-file-hook
(setq auto-insert-directory (concat my-emacs-path "templates/"))
(setq auto-insert-query t) ; To be prompted before inserting

(setq auto-insert-alist
      (append '((c-mode . "template.c")
                (asm-mode . "template.asm")
                (c++-mode . "template.cpp")
                )
              auto-insert-alist))


(provide 'template-settings)
;;; template-settings.el ends here
