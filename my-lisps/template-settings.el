;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-29 19:22:36 Wednesday by taoshanwen>

(require 'template)

(eal-define-keys
 '(emacs-lisp-mode-map c-mode-base-map makefile-mode-map makefile-automake-mode-map
                       sh-mode-map text-mode-map python-mode-map py-mode-map)
 `(("C-c T" my-template-expand-template)
   ("C-c C-t" template-expand-template)))

(defun template-settings ()
  "settings for `template'."
  (setq template-default-directories (list (concat my-emacs-path "/templates/")))

  (defvar last-template nil "���ʹ�õ�ģ���ļ�")

  (defun my-template-expand-template (template)
    "չ��template��ģ���ļ�"
    (interactive
     (list
      (read-file-name
       (if last-template (format "��ָ��ģ���ļ�(ȱʡΪ%s): " last-template) "��ָ��ģ���ļ�: ")
       (concat my-emacs-path "templates") last-template t)))
    (template-expand-template template)
    (setq last-template template)))

(eval-after-load "template"
  `(template-settings))

(template-initialize)

(provide 'template-settings)
