;;; compile-misc --- some compile settings
;;; Commentary:
;; Time-stamp:<2014-07-11>
;;; Code:

;;;###autoload
(defun compile-buffer ()
  "Compile current buffer file."
  (interactive)
  (let ((file (buffer-file-name)) base-name)
    (if (not file)
        (message "No file associated with this buffer!")
      (setq base-name (file-name-nondirectory file))
      (let ((extension (file-name-extension file)))
        (cond
         ((equal extension "cpp")
          (compile (format "g++ -g -Wall -std=c++11 %s -o %s" file (file-name-base))))
         ((equal extension "c")
          (compile (format "gcc -g -Wall %s -o %s" file (file-name-base))))
         ((equal extension "java")
          (compile (format "javac -g %s" file)))
         ((equal extension "asm")
          (compile (format "ml /c %s" file)))
         
         )))))


;; Helper for compilation.
;; Close the compilation window if there was no error at all.
(setq compilation-exit-message-function
      (lambda (status code msg)
        ;; If M-x compile exists with a 0
        (when (and (eq status 'exit) (zerop code))
          ;; then bury the *compilation* buffer, so C-x b doesn't go there
          (bury-buffer "*compilation*")
          ;; and delete the *compilation* window
          ; (delete-window (get-buffer-window (get-buffer "*compilation*"))))
          ;; or to choose to return to whatever were looking at before
          (replace-buffer-in-windows "*compilation*"))
        ;; Always return anticipated result compilation-exit-message-function
        (cons msg code)))


;;;###autoload
(defun run-program (command)
  "Run current buffer program using COMMAND."
  (interactive
   (let* ((file (buffer-file-name)) base-name default-command (input ""))
     (if (not file)
         (error "No file associated with this buffer!")
       (setq base-name (file-name-nondirectory file))
       (setq default-command
             (let ((extension (file-name-extension file)))
               (if (not extension)
                   (setq extension ""))
               (cond
                ((or (equal extension "cpp") (equal (downcase extension) "c"))
                 ;(format "./%s" (file-name-sans-extension base-name))) ; linux version
                 (format "%s.exe" (file-name-sans-extension base-name))) ; windows version
                ((equal extension "java")
                 (format "java %s" (file-name-sans-extension base-name)))
                ((or (equal extension "sh") (equal major-mode 'sh-mode))
                 (format "sh %s" base-name))
                ((equal extension "pl")
                 (format "perl -w %s" file))
                ((equal extension "py")
                 (format "python %s" file))
                ((equal extension "js")
                 (format "node --use-strict --harmony %s" file))
                
                )))
       (while (string= input "")
         (setq input (read-from-minibuffer "Command to run: " default-command nil nil 'shell-command-history default-command)))
       (list input))))
  (let ((buffer "*Shell Command Output*"))
    (shell-command command buffer)
    (sleep-for 1)
    (end-of-buffer-other-window buffer)
    )

;  (other-window 1)
;  (switch-to-buffer "*Shell Command Output*")
;  (other-window -1)
  )


;; dev keybinding
(global-set-key [C-f10] 'compile-buffer)
(global-set-key [C-f11] 'run-program)



(provide 'compile-misc)
;;; compile-misc.el ends here
