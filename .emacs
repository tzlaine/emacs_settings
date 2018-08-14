(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(bell-volume 0)
 '(browse-url-browser-function (quote browse-url-mozilla))
 '(c++-tab-always-indent nil)
 '(c-basic-offset 4)
 '(c-default-style (quote ((c++-mode . ""))))
 '(c-doc-comment-style (quote set-from-style))
 '(column-number-mode t)
 '(compile-command "sconsi -j40 -u")
 '(default-toolbar-position (quote top))
 '(delete-selection-mode t)
 '(display-time-display-time-background "grey80")
 '(display-time-form-list (quote (date time)))
 '(fill-column 78)
 '(font-lock-always-fontify-immediately t t)
 '(font-lock-auto-fontify t)
 '(font-lock-maximum-decoration t)
 '(font-lock-mode t t (font-lock))
 '(grep-find-command "find . -type f -print0 | xargs -0 -e grep -n  | grep -v '\\.svn\\|Binary\\|~\\|\\.nm\\|include/\\|build/\\|\\.patch\\|diffs'")
 '(indent-tabs-mode nil)
 '(query-user-mail-address nil)
 '(scroll-bar-mode (quote right))
 '(scroll-conservatively 1)
 '(scroll-step 1)
 '(tab-width 8)
 '(tool-bar-mode nil))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(font-lock-comment-face ((t (:foreground "grey65"))))
 '(font-lock-doc-string-face ((t (:foreground "seagreen2"))))
 '(font-lock-emphasized-face ((t (:background "slategrey"))))
 '(font-lock-keyword-face ((t (:foreground "lightgoldenrod"))))
 '(font-lock-other-emphasized-face ((t (:foreground "red"))))
 '(font-lock-other-type-face ((t (:foreground "orchid"))))
 '(font-lock-preprocessor-face ((t (:foreground "salmon"))))
 '(font-lock-reference-face ((t (:foreground "yellow2"))))
 '(font-lock-string-face ((t (:foreground "turquoise"))))
 '(font-lock-type-face ((t (:foreground "light green"))))
 '(font-lock-variable-name-face ((t (:foreground "pale green"))))
 '(font-lock-warning-face ((t (:bold t :foreground "red"))))
 '(gdb-arrow-face ((t (:background "red3"))) t)
 '(hyper-apropos-hyperlink ((t (:foreground "cyan"))))
 '(isearch ((t (:foreground "white" :background "grey40"))))
 '(mode-line ((t (:background "grey20"))))
 '(paren-match ((t (:foreground "white" :background "grey80"))) t)
 '(text-cursor ((t (:foreground "black" :background "yellow"))) t)
 '(toolbar ((t (:background "grey20"))) t))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;(defun my-c++-unindent-dangling-< (langlem)
;;  (save-excursion
;;    (beginning-of-line)
;;    (c-forward-token-2 0 nil (c-point 'eol))
;;    (if (eq (char-after) ?>)
;;        (if (eq (car langlem) 'topmost-intro-cont)
;;            (- c-basic-offset)
;;          0))))
;;
;;(defun my-c++-mode-hook ()
;;  ;; customizations specific to C++ mode
;;  (c-add-style "my-c++" '("stroustrup"
;;                          (c-offsets-alist . ((template-args-cont
;;                                               . (my-c++-unindent-dangling-<
;;                                                  c-lineup-template-args
;;                                                  +))
;;                                              (topmost-intro-cont
;;                                               . my-c++-unindent-dangling-<)
;;                                              (innamespace . +)
;;                                              (substatement-open . 0)
;;                                              (arglist-close . c-lineup-close-paren)
;;                                              )
;;                                           )
;;                          (c-block-comment-prefix . "")) t))

;; Drop clang-format.el into ~, and turn on the line below, or do:
;; M-x package-install clang-format.
;;(load "~/clang-format.el")

(add-hook 'c++-mode-hook
          (lambda () (local-set-key (kbd "TAB") 'clang-format-region)))
