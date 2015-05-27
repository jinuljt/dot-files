;;;;go-lang start
(setenv "GOPATH" "~/workspace/go")
(setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/go/bin"))
(setq exec-path (append exec-path '("/usr/local/go/bin")))
(setenv "PATH" (concat (getenv "PATH") ":" "~/workspace/go/bin"))
(setq exec-path (append exec-path '("~/workspace/go/bin")))

(add-to-list 'load-path "~/.emacs.d/plugins/go-mode")
(require 'go-mode-autoloads)

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))
(add-to-list 'load-path "~/.emacs.d/plugins/goflymake")
(require 'go-flymake)

(add-to-list 'load-path "~/.emacs.d/plugins/gocode/emacs")
(require 'auto-complete-config)
(require 'go-autocomplete)
(ac-config-default)

(add-to-list 'load-path "~/.emacs.d/plugins/emacs-go-eldoc")
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

;;;;go-lang end
