;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-07-19 17:43:10 Thursday by lcz>

(global-set-key (kbd "<f1>") 'eshell)

(defun eshell-settings ()
  "Settings for `eshell'."
  (defun eshell-mode-hook-settings ()
    "Settings for `term-mode-hook'"
    (make-local-variable 'scroll-margin)
    (setq scroll-margin 0))

  (add-hook 'eshell-mode-hook 'eshell-mode-hook-settings))

(eval-after-load "eshell"
  `(eshell-settings))

(provide 'eshell-settings)
