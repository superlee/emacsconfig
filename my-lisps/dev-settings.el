
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

;; �﷨����
(global-font-lock-mode t)

;; �����Զ���ؼ���
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

;; ���е��Զ���ȫ������
(require 'all-auto-complete-settings)

;; hs-minor-mode,�۵�����
(require 'hs-minor-mode-settings)

;; ������������Զ������Ҵ�����
(eal-define-keys
 `(c-mode-base-map awk-mode-map)
 `(("{" skeleton-c-mode-left-brace)))

;; ��̬����﷨����
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


;; cedet ǿ��Ŀ�������, �����������, ��ȫ, ��ͼ����
;; ��CEDET����ͱ༭C++���� http://emacser.com/cedet.htm
;; Emacs������������ǿ���IDE �� cedet�İ�װ http://emacser.com/install-cedet.htm
;; ��Ȼ��Щbug��һЩ������������ 
(require 'cedet-settings)

;; ecb ���������
(require 'ecb-settings)

;; ��Eclipse����������괦����
(require 'highlight-symbol-settings)

(provide 'dev-settings)