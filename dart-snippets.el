;;; dart-snippets.el --- YASnippets for Dart and Flutter -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 Mohammad Yasin Davoodeh
;;
;; Author: M. Yas. Davoodeh <MYDavoodeh@gmail.com>
;; Created: March 21, 2020
;; Version: 0.1.0
;; Keywords: snippets
;; Homepage: https://github.com/yas/dart-snippets/
;; Package-Requires: ((yasnippet "0.8.0"))
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software: you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by the
;; Free Software Foundation, either version 3 of the License, or (at your
;; option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
;; Public License for more details.
;;
;; You should have received a copy of the GNU General Public License along
;; with this program. If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; This is a collection of YASnippets for Dart and its popular framework
;; Flutter. It also features snippets from the VSCode plugin
;; (Dart-Code <https://github.com/Dart-Code/Dart-Code/>) and
;; YASnippet-snippets(<https://github.com/AndreaCrotti/yasnippet-snippets/>)!
;;
;;; Code:
(require 'yasnippet)

(defvar dart-snippets-dir
  (file-name-directory (or load-file-name (buffer-file-name)))
  "The directory of the Dart YASnippets.")

;;;###autoload
(defun dart-snippets-initialize ()
  "Initialize Dart snippets in order to use them in YASnippets."
  (let ((dir (expand-file-name "snippets" dart-snippets-dir)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs dir t))
    (yas-load-directory dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(dart-snippets-initialize))

(provide 'dart-snippets)
;;; dart-snippets.el ends here
