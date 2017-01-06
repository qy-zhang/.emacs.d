;;; misc-setting.el -- some setting for emacs
;;; Commentary:

;; Time-stamp: <2015-03-30 23:20:14 Administrator>
;;; Code:

;; self information
(setq user-mail-address "zhangqianyi1995@gmail.com")
(setq user-full-name "Qianyi Zhang")


(prefer-coding-system 'utf-8) ; set prefer coding system

; (setq major-mode 'text-mode) ; default mode setting

(setq auto-save-default t) ; auto save

(setq make-backup-file nil); nil backup files
(setq-default make-backup-files nil)

(global-auto-revert-mode t) ; auto-refresh all buffers when files have changed on disk

(setq x-select-enable-clipboard t) ; enable clipboard with outside

(fset 'yes-or-no-p 'y-or-n-p) ; treat y as yes and n as no

(setq ring-bell-function 'ignore) ; do not ring bell and flash

(setq enable-recursive-minibuffers t) ; use minibuffer recursively


;; 防止页面滚动时跳动,scroll-margin 3可以在靠近屏幕边沿3行时就开始滚动,可以很好的看到上下文
(setq scroll-margin 3
      scroll-conservatively 10000)


;; 尽快显示按键序列
(setq echo-keystrokes 0.1)
(setq system-time-locale "C")


;;; sr-speedbar
; (require 'sr-speedbar)
; (setq sr-speedbar-right-side nil)
; (setq sr-speedbar-width 25)
; (setq speedbar-show-unknown-files t)
; (global-set-key (kbd "<f4>") 'sr-speedbar-toggle)


;;; package-management
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


(provide 'misc-settings)
;;; misc-settings.el ends here
