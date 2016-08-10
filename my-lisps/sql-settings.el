;;; sql-settings.el --- settings for sql mode

;; Copyright (C) 2015  zqy

;; Author: zqy <zhangqianyi1997@gmail.com>
;; Keywords: lisp

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

;; 

;;; Code:

(eval-after-load "sql"
  (load-library "sql-indent"))

(add-hook 'sql-mode-hook 'auto-complete-mode)

(provide 'sql-settings)
;;; sql-settings.el ends here
