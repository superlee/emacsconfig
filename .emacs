;; .emacs profile, written by Chaozheng Li
 
(defconst my-emacs-path           "~/emacsconfig/" "我的emacs相关配置文件的路径")
(defconst my-emacs-my-lisps-path  (concat my-emacs-path "my-lisps/") "我自己写的emacs lisp包的路径")
(defconst my-emacs-lisps-path     (concat my-emacs-path "lisps/") "我下载的emacs lisp包的路径")
(defconst my-emacs-templates-path (concat my-emacs-path "templates/") "Path for templates")

(load (concat my-emacs-my-lisps-path "my-subdirs"))
(my-add-subdirs-to-load-path my-emacs-lisps-path)
(my-add-subdirs-to-load-path my-emacs-my-lisps-path)

;; cygwin 设置
(require 'setup-cygwin)

;; 一些基本的小函数
(require 'ahei-misc)

;; 初始化emacs环境变量
(require 'util)

;; 字体设置
(require 'font-settings)

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

;; 使用git-emacs来进行版本控制，避免了在Terminal和编辑区域的切换提高了效率
(require 'git-emacs-settings)

;; 各种语言开发方面的设置
(require 'dev-settings)

;; 打开压缩文件时自动解压缩
;; 必须放在session前面
(auto-compression-mode 1)

;; session,可以保存很多东西，例如输入历史(像搜索、打开文件等的输入)、
;; register的内容、buffer的local variables以及kill-ring和最近修改的文件列表等。非常有用。
(require 'session-settings)

;; 王纯业的desktop, 比desktop快多了
(require 'wcy-desktop-settings)

;; HACK: 要放在最后,免得会出现比较奇怪的现象
;; 保存和恢复工作环境
;; desktop,用来保存Emacs的桌面环境 — buffers、以及buffer的文件名、major modes和位置等等
(require 'desktop-settings)