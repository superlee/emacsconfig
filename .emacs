;; .emacs profile, written by Chaozheng Li
 
(defconst my-emacs-path           "~/emacsconfig/" "�ҵ�emacs��������ļ���·��")
(defconst my-org-path             "e:/Dropbox/MyNote/org/" "�ҵ�org����ļ���·��")
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

;; ͼƬmode
(require 'image-mode-settings)

;; org��һ���ǳ�ǿ���GTD����
(require 'org-settings)

;; org2blogʹ��org ������wordpress
(require 'org2blog-settings)

;; Sina Weibo����
(require 'weibo-settings)

;; Emacs������Ϊһ��server, Ȼ����emacsclient�������server,
;; �����ٴ�����Emacs
(require 'emacs-server-settings)

;; ��webloggerдWordPress����
;; http://emacser.com/weblogger.htm
(require 'weblogger-settings)

;; һЩ��Ȥ�Ķ���
(require 'funny)

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

;; ����Ϊ������buffer��ǰ������丸Ŀ¼����������buffer���������ֿ����������ǵ����ļ�һ��û��̫����������
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; ��ݼ����� .emacs �ļ�
(defun visit-.emacs ()
  "����.emacs�ļ�"
  (interactive)
  (find-file (concat my-emacs-path ".emacs")))
(global-set-key (kbd "C-x E") 'visit-.emacs)

;; ��ݼ����� org-calendar �ļ�
(defun visit-org-calendar ()
  "����org-calendar�ļ�"
  (interactive)
  (find-file (concat my-org-path "һ�ܹ����ܽ�.org")))
(global-set-key (kbd "C-x O") 'visit-org-calendar)


;; time-stamp, ���ļ�ͷ��¼�޸�ʱ��, ����̬����
(require 'time-stamp-settings)

;; ��дģʽ
(setq-default abbrev-mode t)
(setq save-abbrevs nil)

;; ���й���buffer���������
(require 'all-buffer-settings)

;; ʹ��git-emacs�����а汾���ƣ���������Terminal�ͱ༭������л������Ч��
(require 'git-emacs-settings)

;; �й�eshell������
(require 'eshell-settings)

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
;; (require 'desktop-settings)
