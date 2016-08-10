;;; verilog-settings --- verilog
;;; Commentary:

;; -*- Emacs-lisp -*-

;; Time-stamp: <2014-08-15 21:34:32 Administrator>
;;; code:

;; bind the .v files with verilog-mdoe
(autoload 'verilog-mode "verilog-mode" "Verilog mode" t )

(add-to-list 'auto-mode-alist '("\\.[ds]?vh?\\'" . verilog-mode))

(setq verilog-indent-level             4
      verilog-indent-level-module      4
      verilog-indent-level-declaration 4
      verilog-indent-level-behavioral  4
      verilog-indent-level-directive   1
      verilog-case-indent              4
      verilog-if-indent                4
      verilog-auto-newline             nil
      verilog-auto-indent-on-newline   t
      verilog-tab-always-indent        t
      verilog-auto-endcomments         t
      verilog-minimum-comment-distance 40
      verilog-indent-begin-after-if    nil
      verilog-auto-lineup              'declarations
      verilog-highlight-p1800-keywords nil
      verilog-linter			 "my_lint_shell_command"
      )

;; open auto-complete-mode when open .v files
(add-hook 'verilog-mode-hook 'auto-complete-mode)

(provide 'verilog-settings)
;;; verilog-settings.el ends here
