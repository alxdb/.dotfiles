(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(unless package--initialized (package-initialize))

(require 'org)
(org-babel-load-file (concat user-emacs-directory "config.org"))
