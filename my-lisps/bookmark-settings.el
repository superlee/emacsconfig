;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-11-02 09:07:41 Friday by lcz>

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

;; 每当设置书签的时候都保存书签文件，否则只在你退出 Emacs 时保存。
(setq bookmark-save-flag 1)
;; 缺省书签文件的路径及文件名。
(setq bookmark-default-file (concat my-emacs-path ".emacs.bmk"))

(provide 'bookmark-settings)
