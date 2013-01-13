;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-10-06 22:28:00 Saturday by lcz>

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

(require 'org2blog-autoloads)
(setq org2blog/wp-blog-alist
      `(("lichaozheng.info"
         :url "http://www.lichaozheng.info/xmlrpc.php"
         :username "superlee"
         :tags-as-categories nil)
        ))

(setq org2blog/wp-buffer-template
  "#+DATE: %s
#+OPTIONS: toc:nil num:nil todo:nil pri:nil tags:nil ^:nil TeX:nil
#+CATEGORY: 
#+TAGS:
#+PERMALINK:
#+TITLE:
\n

#+BEGIN_CENTER 
Copyright © 2012, 超破. All rights reserved. \n
除非注明，超破的Blog文章均为原创，转载请以链接形式标明本文地址。\n
#+END_CENTER
\n
")

(provide 'org2blog-settings)
