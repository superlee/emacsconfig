
;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-07-24 11:52:20 Tuesday by lcz>

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

;; 语法高亮
(global-font-lock-mode t)

;; 增加自定义关键字
(dolist (mode '(c-mode c++-mode java-mode lisp-mode emacs-lisp-mode
                       lisp-interaction-mode sh-mode sgml-mode))
  (font-lock-add-keywords
   mode
   '(("\\<\\(FIXME\\|TODO\\|Todo\\|HACK\\):" 1 font-lock-warning-face prepend)
     ("\\<\\(and\\|or\\|not\\)\\>" . font-lock-keyword-face)
     ("(\\|)" . beautiful-blue-face)
     ("\\[\\|]" . yellow-face)
     ("<\\|>" . cyan-face)
     ("{\\|}" . green-face))))

;; 所有的自动补全的配置
(require 'all-auto-complete-settings)

;; hs-minor-mode,折叠代码
(require 'hs-minor-mode-settings)

;; 输入左大花扩号自动补齐右大花括号
(eal-define-keys
 `(c-mode-base-map awk-mode-map)
 `(("{" skeleton-c-mode-left-brace)))

;; 动态检查语法错误
(require 'flymake-settings)

(defun skeleton-c-mode-left-brace (arg)
  (interactive "P")
  (if  (c-in-literal (c-most-enclosing-brace (c-parse-state)))
      (self-insert-command 1)
    ;; auto insert complex things.
    (let* ((current-line (delete-and-extract-region (line-beginning-position) (line-end-position)))
           (lines (and arg (mark t) (delete-and-extract-region (mark t) (point))))
           (after-point (make-marker)))
       ;;; delete extra blank begin and after the LINES
      (setq lines (and lines
                       (with-temp-buffer
                         (insert lines)
                         (beginning-of-buffer)
                         (delete-blank-lines)
                         (delete-blank-lines)
                         (end-of-buffer)
                         (delete-blank-lines)
                         (delete-blank-lines)
                         (buffer-string))))
      (save-excursion
        (let* ((old-point (point)))
          (insert (if current-line current-line "")  "{\n")
          (and lines (insert lines))
          (move-marker after-point (point))
          (insert "\n}")
          (indent-region old-point (point) nil)))
      (goto-char after-point)
      (c-indent-line))))


;; cedet 强大的开发工具, 包括代码浏览, 补全, 类图生成
;; 用CEDET浏览和编辑C++代码 http://emacser.com/cedet.htm
;; Emacs才是世界上最强大的IDE － cedet的安装 http://emacser.com/install-cedet.htm
;; 仍然有些bug，一些函数不存在了 
(require 'cedet-settings)

;; ecb 代码浏览器
(require 'ecb-settings)

;; 像Eclipse那样高亮光标处单词
(require 'highlight-symbol-settings)

(provide 'dev-settings)