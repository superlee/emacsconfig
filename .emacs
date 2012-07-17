;; .emacs profile, written by Chaozheng Li
 
(defconst my-emacs-path           "~/.emacs.d/" "�ҵ�emacs��������ļ���·��")
(defconst my-emacs-my-lisps-path  (concat my-emacs-path "my-lisps/") "���Լ�д��emacs lisp����·��")
(defconst my-emacs-lisps-path     (concat my-emacs-path "lisps/") "�����ص�emacs lisp����·��")
(defconst my-emacs-templates-path (concat my-emacs-path "templates/") "Path for templates")

(load (concat my-emacs-my-lisps-path "my-subdirs"))
(my-add-subdirs-to-load-path my-emacs-lisps-path)
(my-add-subdirs-to-load-path my-emacs-my-lisps-path)

;; cygwin ����
(require 'setup-cygwin)

;; һЩ������С����
(require 'ahei-misc)

;; ��ʼ��emacs��������
(require 'util)

;; ��������
(require 'font-settings)

;; color theme Emacs����
(require 'color-theme-settings)

;; һЩEmacs��С����
(require 'misc-settings)

;; ����`eval-after-load'�ӿ������ٶȵĿ�
;; ��eval-after-load���ⲻ��Ҫ��elisp���ļ���
;; http://emacser.com/eval-after-load.htm
(require 'eval-after-load)

;; ����mark��һЩ���ã�ʹ��ǳ������ѡ��region
(require 'mark-settings)

;; `mode-line'��ʾ��ʽ
(require 'mode-line-settings)