;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-08-01 17:48:55 Wednesday by lcz>

(global-set-key (kbd "<f1>") 'eshell)

(defun eshell-settings ()
  "Settings for `eshell'."
  (defun eshell-mode-hook-settings ()
    "Settings for `term-mode-hook'"
    (make-local-variable 'scroll-margin)
    (setq scroll-margin 0))

  (add-hook 'eshell-mode-hook 'eshell-mode-hook-settings))

(setq shell-file-name "/bin/bash") 

(eval-after-load "eshell"
  `(eshell-settings))

(provide 'eshell-settings)
