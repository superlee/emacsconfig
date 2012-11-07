;;-*- coding: utf-8 -*-
;; ############## font setting ###################
;; *ONLY* for windows
;; Usage:
;; Put this file into your load-path
;; and add following into your ~/.emacs file:
;;   (load "fontset-win")
;;   (lcz-fontset-courier 17)
;;
;; it uses Courier New 17 and 新宋体 20 by default
;; I suppose you have Courier New and 新宋体
;;
;; To change default font, add following lines in ~/.emacs:
;;   (load "fontset-win")
;;   (setq my-latin-font "Monaco")
;;   (setq my-latin-size 15)
;;   (lcz-set-font my-latin-size)
;;
;; OR:
;;   (lcz-fontset-monaco 15)
;;
;; To change the font size:
;;    M-x lcz-set-font <RET> FONT-SIZE
;; or press C-x <RET> s
;;
;; To change font:
;;    M-x lcz-fontset-monaco <RET>
;;
;; Following presets are available:
;; lcz-fontset-courier       ;; Courier New 
;; lcz-fontset-monaco        ;; Monaco
;; lcz-fontset-lucida        ;; Lucida Sans Typewriter 
;; lcz-fontset-consolas      ;; Consolas + 微软雅黑
;; lcz-fontset-consolas0     ;; Consolas + 新宋体
;; lcz-fontset-dejavu        ;; DejaVu Sans Mono
;;
;; Of course, you should download these fonts yourself
;;
;; Note: the frame size may change during the change of fontset!

(defun lcz-fontset-inconsolata (&optional fontsize)
  (interactive "P")
  (setq my-latin-font "Inconsolata")
  (setq my-chinese-font "微软雅黑")
  (set-default-font (concat my-latin-font "-" (number-to-string fontsize)))
  ;; Chinese Font
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) 
                      charset
                      (font-spec :family my-chinese-font :size (+ 6 fontsize)))))

(provide 'my-fontset-win)
