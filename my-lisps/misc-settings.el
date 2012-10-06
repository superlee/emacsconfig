;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-09-06 00:08:09 Thursday by lcz>

;; This  file is free  software; you  can redistribute  it and/or
;; modify it under the terms of the GNU General Public License as
;; published by  the Free Software Foundation;  either version 3,
;; or (at your option) any later version.

;; This file is  distributed in the hope that  it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR  A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You  should have  received a  copy of  the GNU  General Public
;; License along with  GNU Emacs; see the file  COPYING.  If not,
;; write  to  the Free  Software  Foundation,  Inc., 51  Franklin
;; Street, Fifth Floor, Boston, MA 02110-1301, USA.

;; 个人信息
(setq user-mail-address "lczxster@gmail.com")
(setq user-full-name    "lcz")

(setq-default default-directory "~")

;; 打开图片显示功能
(auto-image-file-mode t) 

;; 语法高亮度
(global-font-lock-mode t)

;; 显示行号
(global-linum-mode t)

;; 在fringe上显示一个小箭头指示当前buffer的边界
;(setq-default indicate-buffer-boundaries 'left)

;; 在window下如果出现variable binding depth exceeds max-specpdl-size 错误，则把这个值改大
(setq max-specpdl-size 90000)

;; 尽快显示按键序列
(setq echo-keystrokes 0.1)

(setq system-time-locale "C")

;; 隐藏工具栏
(tool-bar-mode nil)

;; 隐藏滚动条
(scroll-bar-mode nil)

;; 隐藏菜单
(menu-bar-mode nil)

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;; 光标靠近鼠标指针时，让鼠标指针自动让开
(mouse-avoidance-mode 'animate)

;; 高亮度显示选中区域
(transient-mark-mode t)

;; Emacs找不到合适的模式时，缺省使用text-mode
(setq default-major-mode 'text-mode)

;; 显示列号
(setq column-number-mode t)

;; emacs lock
(autoload 'toggle-emacs-lock "emacs-lock" "Emacs lock" t)

;; 启用以下功能
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; 不显示Emacs的开始画面
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; Disabled menu and tool bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;; 不要总是没完没了的问yes or no, 为什么不能用y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 不要闪烁光标, 烦不烦啊
(blink-cursor-mode -1)

;; 防止页面滚动时跳动,scroll-margin 3可以在靠近屏幕边沿3行时就开始滚动,可以很好的看到上下文
(setq scroll-margin 3
      scroll-conservatively 10000)

;; 没有提示音,也不闪屏
(setq ring-bell-function 'ignore)

;; 可以递归的使用minibuffer
(setq enable-recursive-minibuffers t)

;; 当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;; 可以保存你上次光标所在的位置
(require 'saveplace)
(setq-default save-place t)

;; 不保存连续的重复的kill
(setq kill-do-not-save-duplicates t)

;; 先格式化再补全
(setq tab-always-indent 'complete)

;; 高亮显示括号匹配,括号匹配时显示另外一边的括号
(show-paren-mode t)
(setq show-paren-highlihgt-openparen t)
(setq show-paren-style 'parenthesis)

(provide 'misc-settings)
