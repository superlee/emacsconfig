;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-07-23 10:45:36 Monday by lcz>

(add-hook 'write-file-hooks 'time-stamp)

(eval-after-load "time-stamp"
  '(progn
;;     (setq time-stamp-format "%04y-%02m-%02d %02H:%02M:%02S %:a by %u")))
     (setq time-stamp-format "%04y-%02m-%02d %02H:%02M:%02S %:a by lcz")))

(provide 'time-stamp-settings)
