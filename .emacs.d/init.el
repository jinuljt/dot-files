(add-to-list 'load-path "~/.emacs.d/init")
(add-to-list 'load-path "~/.emacs.d/plugins")

;;设置emacs的path
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))


;;;;;default coding system 
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

;;;;;flymake
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-flymake")
(require 'flymake)

;;;ido
(ido-mode t)

;;;浏览kill ring
(require 'browse-kill-ring)
(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

;;;;;yasnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode t)

;;;auto complete
(require 'auto-complete-config)
(global-auto-complete-mode t)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;;whitespace mode
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;;;git gutter
(require 'git-gutter)
(global-git-gutter-mode t)
;(git-gutter:linum-setup)
(custom-set-variables
  '(git-gutter:separator-sign "|")
  '(git-gutter:unchanged-sign " ")
  '(git-gutter:modified-sign " ")
  '(git-gutter:added-sign "+")
  '(git-gutter:deleted-sign "-"))

(set-face-background 'git-gutter:unchanged "yellow")
(set-face-background 'git-gutter:modified "purple")
(set-face-foreground 'git-gutter:added "green")
(set-face-foreground 'git-gutter:deleted "red")

;;;read session
(load-library "session")

;;;read init_python.el
(load-library "python")

;;;;read init_go.el
(load-library "go")

;;;read init_web.el
(load-library "web")

;显示列号
(setq column-number-mode t)
(setq kill-ring-max 200)
(setq default-fill-column 60)
(setq read-file-name-completion-ignore-case t)
;(set-background-color "DarkBlue")
;(set-foreground-color "wheat") 
;(set-default-font "-WenQuanYi-WenQuanYi Bitmap Song-bold-normal-normal-*-16-*-*-*-*-*-iso10646-1")

;global key define
(define-key global-map "\C-xg" 'goto-line)
;(define-key global-map "\C-cw" 'woman)
;(define-key global-map "\C-cm" 'man)
;(define-key global-map (kbd "M-<backspace>") 'backward-kill-word)

;;;行号
(require `linum)

;标题栏显示buffer名
;(setq frame-title-format "emacs@%b")


(setq tab-width 4 indent-tabs-mode nil)

;(load-file "~/.emacs.d/cedet-1.0pre6/common/cedet.el")

;org mode
(load "org.el")



(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(org-agenda-files (quote ("~/Documents/org/gtd/"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
