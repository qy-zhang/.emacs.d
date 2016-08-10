;;; my-appearance --- set emacs's appearance
;;; Commentary:
;; Time-stamp: <2014-07-11 20:50:43 zqy>
;;; Code:

;; linum number setting
(global-linum-mode t) ; show column number in the status line
(column-number-mode t) ; show the column number in the left
(require 'linum+)


(require 'misc-functions)
(show-paren-mode t) ; show the paren
;; open hs-minor-mode
(am-add-hooks
 `(c-mode-common-hook lisp-mode-hook emacs-lisp-mode-hook java-mode-hook
                     js-mode-hook)
 'hs-minor-mode)


(mouse-avoidance-mode 'animate) ; move the mouse automatically when mouse is near the cursor

(global-font-lock-mode t)

(setq frame-title-format 'buffer-file-name) ; show file-name on title

(setq inhibit-startup-message t) ; do not show start up image

(customize-set-variable 'scroll-bar-mode nil) ; do not show scroll bar

(customize-set-variable 'tool-bar-mode nil) ; do not show tool bar

(customize-set-variable 'blink-cursor-mode nil) ; do not blink cursor

; (setq initial-scratch-message "") ; show nothing in scratch buffer

(split-window-right) ; start emacs split window


;; tabbar settings
(require 'tabbar)
(tabbar-mode t)

;; file-tree neotree
(require 'neotree)


;; start up maximize-frame
;; (require 'maxframe-settings)
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "YaHei Consolas Hybrid" :foundry "outline" :slant normal :weight normal :height 105 :width normal)))))

;;; color theme settings
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-gnome2)

(load "~/.emacs.d/lisps/molokai-theme/color-theme-molokai.el")
(color-theme-molokai)


(provide 'appearance-settings)
;;; appearance-settings.el ends here
