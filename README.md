# YASnippets for Dart and Flutter

[![License GPL 3](https://img.shields.io/badge/license-GPL_3-green.svg)](http://www.gnu.org/licenses/gpl-3.0.txt)

This is a collection of YASnippets for Dart and its popular framework
Flutter. It includes snippets from the VSCode plugin (Dart-Code
<https://github.com/Dart-Code/Dart-Code/>) but is not limited to that.

## Installation

To use these snippets you need to install
the [Yasnippet](https://github.com/capitaomorte/yasnippet) package. Once you
have Yasnippet installed, place contents of this repository on your load
path, so Emacs can see it and add the following to your configuration file:

```emacs-lisp
(require 'dart-snippets)
```

## Usage

To insert a snippet, type its name and press <kbd>↹ Tab</kbd> or
<kbd>C-i</kbd>.

Also, you can move through the fields pressing <kbd>↹ Tab</kbd> and edit or
delete them. Some fields, like `:author` try to guess their values.

As a special bonus, there are snippets to insert headers of files that
contain information about the software license (`gnugpl` and `mitlic`), they
are smart too.

## Contributions

There are some stylistic conventions:

* Name files without extensions.

* Start every file with this preamble:

  ```
  # -*- mode: snippet -*-
  # contributor: your name
  # name: readable name of the snippet
  # key: what user needs to enter
  # --
  ```

  The first line is needed to activate mode for snippet editing in Emacs,
  Yasnippet ships with it.

* Make sure your files don't have an empty line at the end. This is
  important, because it will be inserted when your snippet is expanded.
  `snippet-mode` takes care of this, setting `require-final-newline` to
  `nil`, just make sure you haven't put it there manually.

## License

Copyright © 2020 Mohammad Yasin Davoodeh

Distributed under GNU GPL, version 3.
