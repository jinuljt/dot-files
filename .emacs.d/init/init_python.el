;;;;;python settings start
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)



(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist(cons '("python" . python-mode) 
                                  interpreter-mode-alist))

(setq py-python-command "python")
(autoload 'python-mode "python-mode" "Python editing mode." t)

(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq python-indent 8)
            (setq tab-width 4)
            ))

(require 'pycomplete)
(require 'python-pep8)
(require 'python-pylint)
(require 'flymake-cursor)
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                        'flymake-create-temp-inplace))
           (local-file (file-relative-name
                         temp-file
                         (file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))
(add-hook 'python-mode-hook 'flymake-mode)


(define-key global-map "\C-cn" 'flymake-goto-next-error)
(define-key global-map "\C-cp" 'flymake-goto-prev-error)

;;;;;python settings end


