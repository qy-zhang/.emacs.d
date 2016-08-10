;;; web-settings.el --- emacs major mode for editing web templates

;; Copyright (C) 2015  zqy

;; Author: zqy <zhang1000qianyi@gmail.com>
;; Keywords: web-settings

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

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; settings
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  ;; indent setting
  (setq web-mode-markup-indent-offset 2)
  ;; comment style setting
  (setq web-mode-comment-style 2)

  )
(add-hook 'web-mode-hook 'my-web-mode-hook)



(add-hook 'web-mode-hook #'(lambda () (yas-activate-extra-mode 'html-mode)))
(add-hook 'web-mode-hook 'auto-complete-mode)

;; keybinding
(defun my-web-mode-keybinding ()
  "Settings for keybinding."
  (eal-define-keys
   '(web-mode-map)
   '(("C-c C-v" browse-url-of-file))))

(eval-after-load "web-mode"
  '(my-web-mode-keybinding))

(provide 'web-settings)
;;; web-settings.el ends here
