;; Copyright (C) 2010 ahei

;; Author: ahei <ahei0802@gmail.com>
;; URL: http://code.google.com/p/dea/source/browse/trunk/my-lisps/ecb-settings.el
;; Time-stamp: <2013-01-13 15:00:43 Sunday by lcz>

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

(setq stack-trace-on-error t)

(require 'semantic-load)
(require 'ecb-autoloads)

;; Disable the tip of the day
(setq ecb-tip-of-the-day nil)


(defun ecb ()
  "ecb"
  (interactive)
  (ecb-activate)
  (ecb-layout-switch "left9"))

(defun ecb-settings ()
  "Settings for `ecb'.")

(eval-after-load "ecb"
  `(ecb-settings))

(provide 'ecb-settings)
