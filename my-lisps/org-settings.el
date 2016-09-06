;;; org-settings.el --- settings for org-mode        -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Qianyi Zhang

;; Author: Qianyi Zhang <zhangqianyi1995@gmail.com>
;; Keywords: outlines

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; change org todo keywords

;;; Code:


(defun org-settings ()
  "Settings for 'org'."

  ;; 更改TODO的关键字，按下C-c C-t可以切换状态
  ;; 括号中的内容 !表示进入懂啊这种状态后会记录下当前时间，如果加上字母表示每次切换状态时弹出提示窗口选择快捷键切换状态
  (setq org-todo-keywords
        '((sequence "TODO(t)" "DOING(i!)" "DONE(d!)" "HANGUP(h!)" "CANCEL(c!)" "BUG(b!)" "FIXED(f!)")))
  ;'((sequence "TODO" "DOING(!)" "HANGUP(!)" "|" "DONE(!)" "CANCEL(!)")))

  ;; 打开org文件默认展开
  (setq org-startup-folded nil))

;;;###autoload

(eval-after-load "org"
  `(org-settings))

(provide 'org-settings)
;;; org-settings.el ends here
