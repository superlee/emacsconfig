;; .emacs profile, written by Chaozheng Li

(if (string-equal system-type "windows-nt")
    ;;window下的配置
    (progn
      (defconst my-emacs-path           "~/emacsconfig/" "我的emacs相关配置文件的路径")
      (defconst my-org-path             "e:/Dropbox/MyNote/org/" "我的org相关文件的路径")
      (defconst my-emacs-my-lisps-path  (concat my-emacs-path "my-lisps/") "我自己写的emacs lisp包的路径")
      (defconst my-emacs-lisps-path     (concat my-emacs-path "lisps/") "我下载的emacs lisp包的路径")
      (defconst my-emacs-templates-path (concat my-emacs-path "templates/") "Path for templates")

      (load (concat my-emacs-my-lisps-path "my-subdirs"))
      (my-add-subdirs-to-load-path my-emacs-lisps-path)
      (my-add-subdirs-to-load-path my-emacs-my-lisps-path)
      ;; cygwin 设置
      (require 'setup-cygwin)

      ;; Git path configuration
      (setq exec-path (add-to-list 'exec-path "C:/Program Files (x86)/Git/bin"))
      (setenv "PATH" (concat "C:\\Program Files (x86)\\Git\\bin;" (getenv "PATH")))
      ;; move the runemacsclienttw.exe to the d:/ and set the editor of git 
      (setq magit-emacsclient-executable "d:/emacs/bin/emacsclientw.exe")

      )
  (if (string-equal system-type "gnu/linux")
      (progn
	(defconst my-emacs-path           "/mnt/windows_d/emacsconfig/" "我的emacs相关配置文件的路径")
	(defconst my-org-path             "/mnt/windows_e/Dropbox/MyNote/org/" "我的org相关文件的路径")
	(defconst my-emacs-my-lisps-path  (concat my-emacs-path "my-lisps/") "我自己写的emacs lisp包的路径")
	(defconst my-emacs-lisps-path     (concat my-emacs-path "lisps/") "我下载的emacs lisp包的路径")
	(defconst my-emacs-templates-path (concat my-emacs-path "templates/") "Path for templates")

 	(load (concat my-emacs-my-lisps-path "my-subdirs"))
	(my-add-subdirs-to-load-path my-emacs-lisps-path)
	(my-add-subdirs-to-load-path my-emacs-my-lisps-path)
	)
      )
)
 
;; 一些基本的小函数
(require 'ahei-misc)

;; 初始化emacs环境变量
(require 'util)

;; 字体设置
(require 'font-settings)

;; 图片mode
(require 'image-mode-settings)

;; org2blog使用org 来发布wordpress
(require 'org2blog-settings)

;; Sina Weibo设置
(require 'weibo-settings)

;; Emacs可以做为一个server, 然后用emacsclient连接这个server,
;; 无需再打开两个Emacs
(require 'emacs-server-settings)

;; 用weblogger写WordPress博客
;; http://emacser.com/weblogger.htm
;;(require 'weblogger-settings)

;; 一些有趣的东西
(require 'funny)

;; color theme Emacs主题
(require 'color-theme-settings)

;; 一些Emacs的小设置
(require 'misc-settings)

;; 利用`eval-after-load'加快启动速度的库
;; 用eval-after-load避免不必要的elisp包的加载
;; http://emacser.com/eval-after-load.htm
(require 'eval-after-load)

;; 关于mark的一些设置，使你非常方便的选择region
(require 'mark-settings)

;; 'mode-line'显示格式
(require 'mode-line-settings)

;; 可以为重名的buffer在前面加上其父目录的名字来让buffer的名字区分开来，而不是单纯的加一个没有太多意义的序号
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; package的安装源
(require 'package-settings)

;; 快捷键访问 .emacs 文件
(defun visit-.emacs ()
  "访问.emacs文件"
  (interactive)
  (find-file (concat my-emacs-path ".emacs")))
(global-set-key (kbd "C-x E") 'visit-.emacs)

;; 各种语言开发方面的设置
(require 'dev-settings)

;; org是一个非常强大的GTD工具,放在dev-setting 后面覆盖 C-c a 的绑定
(require 'org-settings)

;; 快捷键访问 org-calendar 文件
(defun visit-org-calendar ()
  "访问org-calendar文件"
  (interactive)
  (find-file (concat my-org-path "work.org")))
(global-set-key (kbd "C-x W") 'visit-org-calendar)


;; time-stamp, 在文件头记录修改时间, 并动态更新
(require 'time-stamp-settings)

;; 简写模式
(setq-default abbrev-mode t)
(setq save-abbrevs nil)

;; 所有关于buffer方面的配置
(require 'all-buffer-settings)

;; 使用git-emacs来进行版本控制，避免了在Terminal和编辑区域的切换提高了效率
(require 'git-emacs-settings)

;; 有关eshell的配置
(require 'eshell-settings)

;; 打开压缩文件时自动解压缩
;; 必须放在session前面
(auto-compression-mode 1)

;; session,可以保存很多东西，例如输入历史(像搜索、打开文件等的输入)、
;; register的内容、buffer的local variables以及kill-ring和最近修改的文件列表等。非常有用。
(require 'session-settings)

;; 王纯业的desktop, 比desktop快多了
(require 'wcy-desktop-settings)

;; 快速跳转
(require 'quick-jump)

;; org 到 Presentation
(require 'html5presentation_settings)

;; 书签设置
(require 'bookmark-settings)

;; cua 配置
(require 'cua-settings)

;; 轻量标记语言markdown
(require 'markdown-mode-settings)

;; HACK: 要放在最后,免得会出现比较奇怪的现象
;; 保存和恢复工作环境
;; desktop,用来保存Emacs的桌面环境 — buffers、以及buffer的文件名、major modes和位置等等
;; (require 'desktop-settings)
