;;; slime-settings.el --- settings for slime

;; Copyright (C) 2015  zqy

;; Author: zqy <zhang1000qianyi@gmail.com>
;; Keywords: slime

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

;; lisp slime
(setq inferior-lisp-program "~/SBCL/sbcl.exe")

(require 'slime)
(slime-setup '(slime-fancy))

(provide 'slime-settings)
;;; slime-settings.el ends here
