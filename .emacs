;; .emacs profile, written by Chaozheng Li
 
(defconst my-emacs-path           "~/emacsconfig/" "�ҵ�emacs��������ļ���·��")
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

;; 'mode-line'��ʾ��ʽ
(require 'mode-line-settings)

;; ʹ��git-emacs�����а汾���ƣ���������Terminal�ͱ༭������л������Ч��
(require 'git-emacs-settings)

;; �������Կ������������
(require 'dev-settings)

;; ��ѹ���ļ�ʱ�Զ���ѹ��
;; �������sessionǰ��
(auto-compression-mode 1)

;; session,���Ա���ܶණ��������������ʷ(�����������ļ��ȵ�����)��
;; register�����ݡ�buffer��local variables�Լ�kill-ring������޸ĵ��ļ��б�ȡ��ǳ����á�
(require 'session-settings)

;; ����ҵ��desktop, ��desktop�����
(require 'wcy-desktop-settings)

;; HACK: Ҫ�������,��û���ֱȽ���ֵ�����
;; ����ͻָ���������
;; desktop,��������Emacs�����滷�� �� buffers���Լ�buffer���ļ�����major modes��λ�õȵ�
(require 'desktop-settings)