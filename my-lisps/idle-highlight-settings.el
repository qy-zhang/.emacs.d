;;; idle-highlight-settings.el --- settings for idle-highlight

;; Copyright (C) 2016  Qianyi Zhang

;; Author: Qianyi Zhang <zhangqianyi1995@gmail.com>
;; Keywords: idle-highlight

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


(defun my-idle-highlight-hook ()
  "Settings for idle-highlight-mode."
  (make-local-variable 'column-number-mode)
  (column-number-mode t)
  ; (if window-system (hl-line-mode t))
  (idle-highlight-mode t))

(add-hook 'prog-mode-hook 'my-idle-highlight-hook)

(provide 'idle-highlight-settings)
;;; idle-highlight-settings.el ends here
