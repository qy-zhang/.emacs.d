;;; my-keybinding --- some comfortable keybinding
;;; Commentary:
;; Time-stamp: <2014-07-11 20:47:38 dimzqy>
;;; Code:


(global-set-key (kbd "C-SPC") 'nil) ; unbind C-SPC to set mark

(global-set-key [(control return)] 'set-mark-command) ; M-SPC set mark

; (global-set-key [C-tab] 'other-window) ; C-tab switch to other windows

(global-set-key (kbd "RET") 'newline-and-indent) ; bind return key to indent

(defun other-window-backward (&optional n)
  "Select Nth select window."
;  (interactive "p")
;  (other-window (- (or n 1))))
  (interactive "P")
  (other-window (- (prefix-numeric-value n))))

(global-set-key "\C-x\C-n" 'other-window) ; binding C-x C-n to switch to next window
(global-set-key "\C-x\C-p" 'other-window-backward) ; C-x C-p switch to previous window

(global-set-key (kbd "C-c +") 'increment-number-at-point)

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-k") 'kill-this-buffer)

;; kill ring settings
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

(global-set-key [(control c)(k)] 'browse-kill-ring)

(setq kill-ring-max 200) ; set a big kill-ring in case of delete
(setq kill-do-not-save-duplicates t) ; do not save duplicate kill


(defun toggle-comment-on-region-or-line ()
  "Comments or uncomments the region or the current line if there's no active region."
  (interactive)
  (let (begin end)
    (if (region-active-p)
        (setq begin (region-beginning) end (region-end))
      (setq begin (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region begin end)))

(global-set-key (kbd "C-;") 'toggle-comment-on-region-or-line)



;; fast dir
(defun goto-my-emacs-lisps-dir ()
  "Goto `my-emacs-lisps-path'."
  (interactive)
  (dired my-emacs-lisps-path))
(defun goto-my-emacs-my-lisps-dir ()
  "Goto `my-emacs-my-lisps-path'."
  (interactive)
  (dired my-emacs-my-lisps-path))
(defun goto-my-emacs-dir ()
  "Goto `my-emacs-path'."
  (interactive)
  (dired my-emacs-path))
(defun goto-my-home-dir ()
  "Goto my home directory."
  (interactive)
  (dired "~"))


(defun switch-to-scratch ()
  "Switch to buffer *scratch*."
  (interactive)
  (let ((buffer (get-buffer-create "*scratch*")))
    (switch-to-buffer buffer)
    (unless (equal major-mode 'lisp-interaction-mode)
      (lisp-interaction-mode))))
(global-set-key (kbd "C-x s") 'switch-to-scratch)

(defun visit-.emacs ()
  "Visit .emacs."
  (interactive)
  (find-file "~/.emacs"))
(global-set-key (kbd "C-x E") 'visit-.emacs)


(provide 'keybinding-settings)
;;; keybinding-settings.el ends here
