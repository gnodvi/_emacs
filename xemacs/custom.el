;
; XEMACS-KOI8
;

; принудительный выход для тестов
;(keyboard-quit)


(custom-set-variables
 '(buffers-menu-grouping-function nil)
 '(buffers-menu-sort-function (quote sort-buffers-menu-alphabetically))

 '(paren-mode (quote paren) nil (paren))

; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
; '(selection-sets-clipboard t t)
; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

; '(compilation-window-height 11)
 '(lazy-lock-mode t nil (lazy-lock))
 '(c-tab-always-indent t)
 '(signal-error-on-buffer-boundary nil)
 '(case-fold-search nil)
 '(pending-delete-mode t nil (pending-del))
 '(toolbar-visible-p t)
 '(truncate-lines nil)
 '(kill-whole-line t)
 '(isearch-highlight-all-matches nil)
 '(compilation-read-command nil)
 '(indent-tabs-mode nil)
 '(modeline-scrolling-method nil))


;(custom-set-faces
; '(shell-option-face ((t (:foreground "Red" :background "   yellow"))) t))

;(custom-set-faces
; '(html-helper-bold-face ((t (:foreground "gray1"))) t)
; '(html-helper-italic-face ((t (:foreground "gray1"))) t)
;)
(custom-set-faces
 '(html-helper-italic-face ((t (:foreground "gray1"))) t)
 '(html-helper-bold-face ((t (:foreground "gray1"))) t))

