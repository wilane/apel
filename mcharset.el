;;; mcharset.el --- MIME charset API

;; Copyright (C) 1997,1998 Free Software Foundation, Inc.

;; Author: MORIOKA Tomohiko <morioka@jaist.ac.jp>
;; Keywords: emulation, compatibility, Mule

;; This file is part of APEL (A Portable Emacs Library).

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Code:

(require 'poe)

(cond ((featurep 'mule)
       (cond ((featurep 'xemacs)
	      (require 'mcs-xm)
	      )
	     ((>= emacs-major-version 20)
	      (require 'mcs-e20)
	      )
	     (t
	      ;; for MULE 1.* and 2.*
	      (require 'mcs-om)
	      ))
       )
      ((boundp 'NEMACS)
       ;; for Nemacs and Nepoch
       (require 'mcs-nemacs)
       )
      (t
       (require 'mcs-latin1)
       ))


;;; @ end
;;;

(provide 'mcharset)

;;; mcharset.el ends here
