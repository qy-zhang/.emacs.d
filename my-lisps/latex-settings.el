;;; latex-settings --- latex
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-08-28 19:05:19 Administrator>
;;; code:

;; use yap as viewer enable MikTeX integration
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(if (string-equal system-type "windows-nt")
    (require 'tex-mik))


(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-save t)
            (setq TeX-parse-self t)
            (setq-default TeX-master nil)
            (reftex-mode t)
            (TeX-fold-mode t)))

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq TeX-PDF-mode t)


(provide 'latex-settings)
;;; latex-settings.el ends here
