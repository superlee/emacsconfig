;; .emacs profile, written by Chaozheng Li
 
(defconst my-emacs-path           "~/.emacs.d/" "我的emacs相关配置文件的路径")
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

;; `mode-line'显示格式
(require 'mode-line-settings)