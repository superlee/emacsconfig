;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-09-06 01:06:29 Thursday by lcz>

(when (and window-system is-after-emacs-23)
  (require 'my-fontset-win)
  (if mswin
      ;; (huangq-fontset-courier 17)
      (lcz-fontset-consolas 17)
    ;; (huangq-fontset-dejavu 17)))
    ;; (huangq-fontset-fixedsys 17)
    (set-default-font "Monospace 11")))

(provide 'font-settings) 
