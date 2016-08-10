;;; assembly-settings --- settings for assembly language
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-10-23 23:26:30 zqy>
;;; code:

;; (require 'gas-mode)
;; (add-to-list 'auto-mode-alist '("\\.S\\'" . gas-mode))
;; (add-to-list 'auto-mode-alist '("\\.asm\\'" . gas-mode))


(defun assembly-create-shell-buffer ()
  "Create shell buffer for assembly file."
  (interactive)
  (let ((file (buffer-file-name)))
    (let ((extension (file-name-extension file)))
      (if (or (equal extension "asm")
              (equal extension "S"))
          (progn
           (split-window-right)
           (shell "*shell*")
           (switch-to-buffer-other-window (file-name-nondirectory file)))))))
(add-hook 'asm-mode-hook 'assembly-create-shell-buffer)



(provide 'assembly-settings)
;;; assembly-settings.el ends here
