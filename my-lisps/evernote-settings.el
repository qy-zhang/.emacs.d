;;; evernote-settings.el --- settings for evernote

;; Copyright (C) 2016  Qianyi Zhang

;; Author: Qianyi Zhang <zhangqianyi1995@gmail.com>
;; Keywords: 

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

(require 'evernote-mode)

(setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8"))

(setq evernote-developer-token "S=s72:U=e95118:E=15d7c96808a:C=15624e55300:P=1cd:A=en-devtoken:V=2:H=02c3bf39d173e3459a8ee2e53e3234d1")

(provide 'evernote-settings)
;;; evernote-settings.el ends here
