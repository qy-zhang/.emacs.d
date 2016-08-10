;;; auto-complete-setting --- settings for auto-complete
;;; Commentary:
;; -*- Emacs-Lisp -*-

;; Time-stamp: <2014-07-10 21:05:40 dimzqy>
;;; code:

(require 'auto-complete-config)
(require 'auto-complete)

;(global-auto-complete-mode t)

(add-to-list 'ac-dictionary-directories (concat my-emacs-lisps-path "auto-complete/ac-dict"))
(ac-config-default)
;; After do this, isearch any string, M-: (match-data) always
;; return the list whose elements is integer


;; 不让回车的时候执行`ac-complete', 因为当你输入完一个
;; 单词的时候, 很有可能补全菜单还在, 这时候你要回车的话,
;; 必须要干掉补全菜单, 很麻烦, 用M-j来执行`ac-complete'
(eal-define-keys
 'ac-complete-mode-map
 `(("<return>"   nil)
   ("RET"        nil)
   ;("<tab>"      nil)
   ;("<S-tab"     nil)
   ("M-j"        ac-complete)
   ))

(defun auto-complete-settings ()
  "Settings for `auto-complete'."
  (setq help-xref-following nil)
  
  (setq ac-auto-show-menu t
        ac-auto-start t
        ac-dwim t
        ac-candidate-limit ac-menu-height
        ac-quick-help-delay .5
        ac-disable-faces nil)

  (set-default 'ac-sources
               '(ac-source-semantic-raw
                 ac-source-yasnippet
                 ac-source-dictionary
                 ac-source-abbrev
                 ac-source-words-in-buffer
                 ac-source-words-in-same-mode-buffers
                 ac-source-imenu
                 ac-source-files-in-current-dir
                 ac-source-filename))
;  (setq ac-modes ac+-modes)

  (defun ac-start-use-sources (sources)
    (interactive)
    (let ((ac-sources sources))
      (call-interactively 'ac-start))))

(eval-after-load "auto-complete"
  '(auto-complete-settings))


(provide 'auto-complete-settings)
;;; auto-complete-settings.el ends here
