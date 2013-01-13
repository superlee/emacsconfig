;; -*- Emacs-Lisp -*-

;; Time-stamp: <2012-12-02 21:09:12 Sunday by lcz>

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

(require 'jde)

(setq jde-jdk-registry
      '(
        ("1.7.0.05" . "c:/Program Files/Java/jdk1.7.0_05")))

(setq jde-jdk '("1.7.0.05"))

(provide 'jdee-settings)
