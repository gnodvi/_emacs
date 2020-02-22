
;------------------------------------------------------------------------------
;C-x describe-bindings:   
;   3 www3 www3 www3 www www3 www3 www3www3 www3 www3www3 www3 www3www3 www3 www3
; ffff rrrrrrrrrr3 www3 www3 www3 www3 www
; 77777777777     www  www  www www 
;
;==============================================================================
;                                  KEYS                              
;==============================================================================

(global-set-key '(f1)         'my_find_file_init_main)  


;;(global-set-key '(f2)          'save-buffer)  
;;(global-set-key '(control f2)  'save-some-buffers)  
(global-set-key '(f2)     'my_save_buffers) 
;(global-set-key '(meta a) 'my_save_buffers) 
 
;;(global-set-key '(f3)         'my_make_read_only)  
;;(global-set-key '(f3)          'find-file-read-only)  
;;(global-set-key '(f3)          'my_find_file)  
;;(global-set-key '(f4)          'find-file)  
 
;(global-set-key '(control i)  'my_find_file_init)  
;(global-set-key '(control i)  'my_find_file_init_main)  ;???
;(global-set-key '(f4)         'my_find_file_init_main)  


(global-set-key '(f4)          'switch-to-previous-buffer) 
(global-set-key '(f5)          'switch-to-next-buffer)
;(global-set-key	'(control  left) 'switch-to-previous-buffer) 
;(global-set-key	'(control right) 'switch-to-next-buffer) 
(global-set-key	'(control -) 'switch-to-previous-buffer) 
(global-set-key	'(control =) 'switch-to-next-buffer) 


(global-set-key '(f7)          'my_make_scratch)
;(global-set-key '(f8)          'my_kill_buf_win) 
;(global-set-key '(control DEL) 'my_kill_buf_win) 
(global-set-key '(control \\)  'my_kill_buf_win) 
 
;(global-set-key '(control f8)  'kill-this-buffer)  
(global-set-key '(f8)  'kill-this-buffer)  

;;(global-set-key '(kp-add)      'split-window-vertically)
;;(global-set-key '(kp-multiply) 'split-window-horizontally)  
  
(global-set-key '(f9)    'my_clean) 
(global-set-key '(control f12) 
  '(lambda (&rest args) (interactive)  (find-file "Makefile")))

(global-set-key '(f10)   'previous-error)  
(global-set-key '(f11)   'next-error)  
(global-set-key '(f12)   'my_save_and_build) 

;(global-set-key '(control =) 'my_fontify) 
;(global-set-key '(control -) 'my_unfontify) 

;(global-set-key '(meta \1) 'comment-region) 
;(global-set-key '(meta \`) 'my_uncomment) 
 
;(global-set-key '(control shift) 'my_empty)

;(global-set-key '(control h)   'describe-foo-at-point)

;(global-set-key '(meta \x) 'my_cut_select)
(global-set-key '(meta d) 'my_cut_select)


;; Make HOME and END work like God intended
;(global-set-key [home] 'beginning-of-line)
;(global-set-key [end] 'end-of-line)

;; make M-SPC fixup whitespace
;(global-set-key [(meta space)] 'just-one-space)  
;; =====================================================================

(global-set-key '(meta a)  'my_save_buffers) 

(global-set-key '(meta z) 'advertised-undo) 
;;(global-set-key '(meta Z) 'repeat-complex-command)   

;;(global-set-key '(control d) 'kill-entire-line)
;;(global-set-key '(control d) 
;;  (if (fboundp 'kill-entire-line) 'kill-entire-line 'Init-kill-entire-line))

;;(global-set-key '(control delete) 'delete-primary-selection) ; Delete
;;(global-set-key '(shift   delete) 'kill-primary-selection)   ; Cut 
;;(global-set-key '(control insert) 'copy-primary-selection)   ; Copy 
;;(global-set-key '(shift   insert) 'yank-clipboard-selection) ; Paste 


;(setq x-select-enable-clipboard t        ;; copy-paste should work ...
;  interprogram-paste-function            ;; ...with...
;  'x-cut-buffer-or-selection-value)      ;; ...other X clients


;;(define-key ctl-x-map  [(meta x)] 'exchange-point-and-mark-nomark)
                                        ;
(define-key global-map [(meta c)]  'copy-region-as-kill)

;(global-set-key '(meta c) 'copy-primary-selection)   ; Copy 
;(global-set-key '(meta c) 'copy-region-as-kill)   ; Copy 
;;(define-key global-map [(control insert)]  'copy-region-as-kill)

;(global-set-key '(meta v) 'yank-clipboard-selection) ; Paste 
(global-set-key '(meta v) 'yank) ; Paste 

;Cut, copy and paste key bindings

;Based on the description of a region above, defining the common functions Cut, Copy and Paste on the region becomes very useful. The functions should be bound to keys for easy access, for instance like:

;(global-set-key [f5] 'copy-region-as-kill) ; Copy
;(global-set-key [f6] 'kill-region)         ; Cut
;(global-set-key [f7] 'yank)                ; Paste

;An element that is cut or copied this way is put into something called
; the kill-ring. Calling the yank function always pastes the last entry 
;from the kill-ring. However, after the yank function as called, it is 
;possible to replace the pasted text by the second last entry in the ring 
;and so on by calling the yank-pop (by default boud to the Esc-y key) function 
;repeatedly. In effect, all cut/copy operations of the session is registered, 
;and are easily accessible through this simple sequence of key strokes. 

;;
;(global-set-key [(shift delete)] 'clipboard-kill-region)
;(global-set-key [(control insert)] 'clipboard-kill-ring-save)
;(global-set-key [(shift insert)] 'clipboard-yank)

;(global-set-key '(meta x) 'clipboard-kill-region)
;(global-set-key '(meta c) 'clipboard-kill-ring-save)
;(global-set-key '(meta v) 'clipboard-yank)

;(global-set-key "\C-cc\C-c" 'clipboard-kill-ring-save)
;(global-set-key "\C-cc\C-x" 'clipboard-kill-region)
;(global-set-key "\C-cc\C-v" 'clipboard-yank)
;----------------------------------------------------------------------

;(load-file "~/.xemacs/cua-mode.el")  ; load cua-mode every time XEmacs is started

(load-file "~/.xemacs/cua-mode-1.3-xemacs.el") 

;(load-file "cua-mode-1.3-xemacs.el") 

(CUA-mode 1) ; run cua-mode (a package to enable MS Windows type keyboard shortcuts)

;???? чего-то не работает?? ооооооооооо  о

; да вроде уже устанавливаем дальше
;
;(setq x-select-enable-clipboard t)
;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;----------------------------------------------------------------------
;http://lists.gnu.org/archive/html/help-gnu-emacs/2010-01/msg00373.html


;Aha! With emacs 23 on ubuntu, pasting this into my .emacs makes emacs
;have sane clipboard behavior using traditional emacs keybindings! I'm
;not sure why this isn't default...

;;; try to get clipboard working
;; stops selection with a mouse being immediately injected to the kill ring
;(setq mouse-drag-copy-region nil)
;; stops killing/yanking interacting with primary X11 selection
;(setq x-select-enable-primary nil)
;; makes killing/yanking interact with clipboard X11 selection
;(setq x-select-enable-clipboard t)

;;  active region sets primary X11 selection
;(setq select-active-regions t)
;; make mouse middle-click only paste from primary X11 selection, not
;clipboard and kill ring.
;(global-set-key [mouse-2] 'mouse-yank-primary)

;----------------------------------------------------------------------

;;(global-set-key '(control \8) 'my_make_scratch)  
;;(global-set-key '(control a) 'mark-whole-buffer) 
;;(global-set-key '(control g) 'goto-line) 
 
(global-set-key '(meta escape) 'abort-recursive-edit)  
 
;(global-set-key	'(control \\)	  'my_toggle_truncate_lines)


;==============================================================================

;;(global-set-key '(f7)          'make-search-dialog)  
;;(global-set-key '(control f7)  'query-replace) 
 
;==============================================================================
;;(if (eq my-location 'unix) 
;;(progn 
;;  (global-set-key '(control \1) 'comment-region) 
;;  (global-set-key '(control \`) 'my_uncomment) 


;;  (global-set-key '(control s) 'isearch-forward) 
;;  (define-key isearch-mode-map '(control s) 'isearch-repeat-forward)
  
;;  (global-set-key '(control q) 'isearch-backward) 
;;  (define-key isearch-mode-map '(control q) 'isearch-repeat-backward)
  
;;  (define-key isearch-mode-map '(control w) 'isearch-yank-word)
;;)
;;(progn 

  (global-set-key '(control \1) 'my_empty) 
  (global-set-key '(control \`) 'my_empty) 

  (global-set-key '(control s) 'my_empty) 
  (define-key isearch-mode-map '(control s) 'my_empty)
  
  (global-set-key '(control q) 'my_empty) 
  (define-key isearch-mode-map '(control q) 'my_empty)
  
  (define-key isearch-mode-map '(control w) 'my_empty)

  ;=================================================================

  (global-set-key '(meta \1) 'comment-region) 
  (global-set-key '(meta \`) 'my_uncomment) 
  (global-set-key '(meta \2) 'my_uncomment) 


;;  ;(define-key global-map '(meta \s) 'isearch-forward)
  (global-set-key '(meta s) 'isearch-forward) 
  (global-set-key '(meta Ugrave) 'isearch-forward)

  (define-key isearch-mode-map '(meta s) 'isearch-repeat-forward)
  (define-key isearch-mode-map '(meta Ugrave) 'isearch-repeat-forward)
  
  (global-set-key '(meta q) 'isearch-backward) 
  (global-set-key '(meta Ecircumflex) 'isearch-backward) 
  (define-key isearch-mode-map '(meta q) 'isearch-repeat-backward)
  (define-key isearch-mode-map '(meta Ecircumflex) 'isearch-repeat-backward)
  
  (define-key isearch-mode-map '(meta w) 'isearch-yank-word)
  (define-key isearch-mode-map '(meta Atilde) 'isearch-yank-word) 
;;;)
;;;) 

;;(setq ewd-kp-usage 'num)  ; keypad numbers are numbers by default        
;;(global-set-key '(control a) 'ewd-toggle-kp-usage) 

;==============================================================================
;  SCROLLING   SSCROLLING   SCROLLING   CROLLING   SCROLLING   

(setq step_koleso 5)


(global-set-key	'(control    up)   'my_scroll_down1) 
;(global-set-key	'(control  left)   'my_scroll_down2) 
;(global-set-key	'(S-left)   'my_scroll_down2) 
(global-set-key	'(meta    prior)   'my_scroll_down2) 
(global-set-key	'(control prior)   'my_scroll_down5) 
(global-set-key	'(        prior)   'my_scroll_down25) 
;(global-set-key	'(        prior)   'my_scroll_down5) 
;(global-set-key '(meta    up)   'my_scroll_down3) 
;(global-set-key '(meta     a)   'my_scroll_down3) 

;------------------------------------------------

(global-set-key	'(control  down)   'my_scroll_up1) 
;(global-set-key	'(control right)   'my_scroll_up2) 
(global-set-key	'(meta     next)   'my_scroll_up2) 
(global-set-key	'(control  next)   'my_scroll_up5) 
(global-set-key	'(         next)   'my_scroll_up25) 
;(global-set-key	'(         next)   'my_scroll_up5) 
;(global-set-key	'(meta    down) 'my_scroll_up3) 
;(global-set-key '(meta       z) 'my_scroll_up3) 

;(define-key global-map 'button2 'my_scroll_up3)


;------------------------------------------------------------------------------
;C-x describe-bindings:
;------------------------------------------------------------------------------

;kp-next         scroll-up-command
;kp-prior        scroll-down-command

;next            scroll-up-command
;prior           scroll-down-command

;C-v             scroll-up-command
;M-v             scroll-down-command

;M-C-kp-up       scroll-down-one
;M-C-kp-down     scroll-up-one
;------------------------------------------------------------------------------

;You can also scroll by "cpage" (and what that means deserves its own 
;article) with C-v to scroll down, and M-v to scroll up. I use the word scroll 
;here because the concept of a page in Emacs is not what it is in other editors. 
;But I doubt anybody cares if you refer to it as page up or down, something 
;I often catch myself doing.

;The command C-M-v also bears mention, as it scrolls the other window; what 
;other is depends on how many split windows you have open (if you do) or frames 
;(if you don't). 

;------------------------------------------------------------------------------

;; If you like the FSF Emacs binding of button3 (single-click
;; extends the selection, double-click kills the selection),
;; uncomment the following:

;;; Under 19.13, the following is enough:
;(define-key global-map 'button3 'mouse-track-adjust)

;; But under 19.12, you need this:
;(define-key global-map 'button3
;    (lambda (event)
;      (interactive "e")
;      (let ((default-mouse-track-adjust t))
;        (mouse-track event))))

;;; Under both 19.12 and 19.13, you also need this:
;(add-hook 'mouse-track-click-hook
;          (lambda (event count)
;            (if (or (/= (event-button event) 3)
;                    (/= count 2))
;                nil ;; do the normal operation
;              (kill-region (point) (mark))
;              t ;; don't do the normal operations.
;              )))

;------------------------------------------------------------------------------
(defun scroll_up_step_stopcursor (step) 
 
  ; только почему на 1-ый столбец сразу срывается ??
  ; 
  (scroll-up     step)  
  (forward-line  step)  
)  
;------------------------------------------------------------------------------
(defun my_scroll_up1 () 
 
  (interactive) 
  (scroll_up_step_stopcursor 1) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_up2 () 
 
  (interactive) 
  (scroll_up_step_stopcursor 2) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_up3 () 
 
  (interactive) 
  (scroll_up_step_stopcursor 3) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_up4 () 
 
  (interactive) 
  (scroll_up_step_stopcursor 4) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_up5 () 
 
  (interactive) 
  (scroll_up_step_stopcursor 5) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_up25 () 
 
  (interactive) 
  (scroll_up_step_stopcursor 25) 
)  
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
(defun scroll_down_step_stopcursor (step) 
 
  (scroll-down     step)  
  (forward-line (- step))  
)  
;------------------------------------------------------------------------------
(defun my_scroll_down1 () 
 
  (interactive)  
  (scroll_down_step_stopcursor 1) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_down2 () 
 
  (interactive)  
  (scroll_down_step_stopcursor 2) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_down3 () 
 
  (interactive)  
  (scroll_down_step_stopcursor 3) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_down4 () 
 
  (interactive)  
  (scroll_down_step_stopcursor 4) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_down5 () 
 
  (interactive)  
  (scroll_down_step_stopcursor 5) 
)  
;------------------------------------------------------------------------------
(defun my_scroll_down25 () 
 
  (interactive)  
  (scroll_down_step_stopcursor 25) 
)  
;------------------------------------------------------------------------------
; track-scroll
; http://www.skamphausen.de/cgi-bin/ska/track-scroll

;Usage

;Well, this is exactly what this library does. The magic key is the middle mouse
;button with or without the control key (unfortunately both of this is currently 
;hard coded).

;If you hold the middle mouse button and drag the mouse you can move the
;contents around a littlebit like you'd grabbed a character with the mouse. 
;This is similar to the moving inside the canvas in Gimp (and similar to 
;mouse-drag.el) besides not being able to move horizontally. But then who needs 
;horizontal scrolling anyway.

;If you perform the same action while also holding the control key the whole 
;height of the window is taken as a 0 to 100% range just like the scrollbar does. 
;The only strange part in this is that the buffer is immediately scrolled to 
;approximately the percentage you clicked. This might sound difficult but is 
;actually very simple. Just give it a try.


;(load "track-scroll.el")
;(load-file "~/.xemacs/track-scroll.el")

;;=============================================================================
;;                    scroll on  mouse wheel
;;=============================================================================
; 
; To make the scroll wheel work in XEmacs, edit your .emacs file to include 
; the text in the second part of this hint. 

; This effectively defines button 4 and 5 as up and down keys, enabling you to 
; scroll with your scroll wheel. 

; Normally, you should use the mwheel.el
; Download a file to your disk drive 
; emacs package by William M. PerryPop a mailto: email dialog box, but before 
; the above link work, you can use this local copy of a beta-version of mwheel.el
; Download a file to your disk drive (Feb 23 1998) or this crude code I made:

; Add to one of your .el files (~/.emacs per default)

;------------------------------------------------------------------------------
(defun scroll_down_step (step) 
 
(let (
  (curwin (selected-window))
  )

  (select-window (car (mouse-pixel-position)))
  (scroll-down   step)
  (select-window curwin)
))  
;------------------------------------------------------------------------------
(defun scroll_up_step (step) 

(let (
  (curwin (selected-window))
  )

  (select-window (car (mouse-pixel-position)))
  (scroll-up     step)
  (select-window curwin)
))  
;------------------------------------------------------------------------------
;
; ОТКЛЮЧИМ пока скроллинг здесь колесиком мыши, чтобы скорее
; его сэмулировать ..
; 
;------------------------------------------------------------------------------
; Button4 - UP motion
;------------------------------------------------------------------------------
; 

(define-key global-map 'button4
  '(lambda (&rest args)
     (interactive) 
     (scroll_down_step step_koleso)     
   )
)

;(define-key global-map [(shift button4)]
;  '(lambda (&rest args)
;     (interactive) 
;     (scroll_down_step 1) 
;   )
;)

;(define-key global-map [(control button4)]
;  '(lambda (&rest args)
;     (interactive) 

;     (let ((curwin (selected-window)))
;       (select-window (car (mouse-pixel-position)))
;       (scroll-down)  ; полную страницу 
;       (select-window curwin)
;       )))

;------------------------------------------------------------------------------
; Button5 - DOWN motion
;------------------------------------------------------------------------------
;
(define-key global-map 'button5
  '(lambda (&rest args)
     (interactive)
     (scroll_up_step step_koleso) 
     ;(scroll_up_step_stopcursor 5) 
 ))

;(define-key global-map [(shift button5)]
;  '(lambda (&rest args)
;     (interactive) 
;     (let ((curwin (selected-window)))
;       (select-window (car (mouse-pixel-position)))
;       (scroll-up 1)
;       (select-window curwin)
;       )))

;(define-key global-map [(control button5)]
;  '(lambda (&rest args)
;     (interactive) 
;     (let ((curwin (selected-window)))
;       (select-window (car (mouse-pixel-position)))
;       (scroll-up)
;       (select-window curwin)
;       )))

;------------------------------------------------------------------------------

; это команды для скроллинга целой страницы (типа PageUp PageDown)
;
 
;(defun scroll-down-command ()  
;  ; если переопределить эту комануд, то колесико не работает,
;  ; а вот скроллбар все также ..
;)  

;(global-set-key '(button4) 'scroll-down-command)
;(global-set-key '(button5) 'scroll-up-command)


;------------------------------------------------------------------------------
;And, on a related topic, you may also want this code to navigate in XEmacs 
;with the numeric keypad:

;;=============================================================================
;;                    scroll on numpad
;;=============================================================================

(define-key global-map 'kp_9 'scroll-down)
(define-key global-map 'kp_3 'scroll-up)
(define-key global-map 'kp_6 '(lambda (&rest args) (interactive)  (other-window 1)))
(define-key global-map 'kp_4 '(lambda (&rest args) (interactive)  (other-window -1)))
(define-key global-map 'kp_2 '(lambda (&rest args) (interactive)  (scroll-up 1)))
(define-key global-map 'kp_8 '(lambda (&rest args) (interactive)  (scroll-down 1)))
(define-key global-map 'kp_7 'beginning-of-buffer)
(define-key global-map 'kp_1 'end-of-buffer)
(define-key global-map 'kp_5 '(lambda (&rest args) (interactive)  (recenter 0)))
      

; "f1 k" - describe key
;
;==============================================================================
;  SCROLLBAR   SCROLLBAR   SCROLLBAR   SCROLLBAR   SCROLLBAR  
;-------------------------------------------------------------

;(set-specifier scrollbar-width 50)
(set-specifier scrollbar-width 40)

;(set-variable 'scroll-step 1)
;(set-variable 'scroll-conservatively 5)

;;-------------------------------------------------------------------------
;http://emacs-fu.blogspot.com/2009/12/scrolling.html
;(setq
;  scroll-margin 100                  
;  scroll-conservatively 100000
;  scroll-preserve-screen-position 1)

;;-------------------------------------------------------------------------

; http://ftp.sunet.se/pub/gnu/xemacs/Attic/faq/HTML/XEmacs-faq_13.html
; Here's a recap of how to use resources to change your scrollbar colors:
;
;! Motif scrollbars
;Emacs*XmScrollBar.Background: skyblue
;Emacs*XmScrollBar.troughColor: lightgray
;
;! Athena scrollbars
;Emacs*Scrollbar.Foreground: skyblue
;Emacs*Scrollbar.Background: lightgray
;Note the capitalization of `Scrollbar' for the Athena widget.
 
;;-------------------------------------------------------------------------
;https://groups.google.com/forum/?fromgroups#!topic/carbon-emacs/seXCHySY7tE

;(custom-set-variables
;   '(mouse-wheel-progressive-speed nil)
;   '(mouse-wheel-scroll-amount (quote (2 ((shift) . 1) ((control)))))
;)
;(set mouse-wheel-progressive-speed nil)
;(set mouse-wheel-scroll-amount (quote (2 ((shift) . 1) ((control)))))

;(this is in the Mouse group).

;The default corresponds to
;'(mouse-wheel-scroll-amount (quote (5 ((shift) . 1) ((control)))))

;I quite like the '1' speed you get with Shift, I must say. Control-scroll-up 
;magnifies the whole screen, I suppose this is one of those NS bindings. 
;Still, I can do without it (having only just discovered that the option 
;even existed).
;-------------------------------------------------------------------------

;==============================================================================  
;                                  LOCATION                                 
;==============================================================================  
;HOMEDRIVE=C
;HOMEPATH=\

(setq my-is-unix  (not (eq (console-type) 'mswindows))) ; Unix or Windows  
 
(defvar my-location
  (if my-is-unix 'unix
      (if (string= (downcase (system-name)) "pilotm")
	  'work	
 	  'home))
)
;----------------------------------------
(defun check-my-location ()
  (interactive)
  ;(message "%s %d %d" (system-name) (device-mm-height) (device-pixel-height))

  (if (eq my-location 'unix) (message "unix"))
  (if (eq my-location 'work) (message "work"))
  (if (eq my-location 'home) (message "home"))
)
;----------------------------------------

;(setq xemacs-logo nil)
(setq query-user-mail-address    nil) 
;(setq user-mail-address "ben@xemacs.org")

;(setq pui-package-install-dest-dir "C:\\.xemacs\\1\\xemacs-packages") 
;(getenv "EMACS_HOME")
;(setenv "EMACS_HOME")
;(setenv "PACKAGE_PATH" "C:\\.xemacs\\1\\xemacs-package")
                            
;==============================================================================
;                                    MENU                                 
;==============================================================================

(setq my-test-popup-menu
  '(""

   [ "DELETE"  my_cut_select]
   "---------"
   [ "Comment"  comment-region]
   [ "UnComment"    my_uncomment]
   "---------"
   [ "BUILD" my_save_and_build]  
;   "---------"
;   [ "End Line" kill-line]  
;   [ "Next Error" next-error]  
;   [ "Prev Error" previous-error]  
   "---------"
   ("Translate"
      [ "Del Ret"  my-delret]
   )
   ("Other Tests"
      [ "check-my-location"  check-my-location]
      [ "Revert Buffer" revert-buffer]
      [ "Read Only"     toggle-read-only :style toggle :selected buffer-read-only ]
      ("Colors"
         [ "my-sxema0"  my-color-sxema0]
         [ "my-sxema1"  my-color-sxema1]
         [ "my-sxema2"  my-color-sxema2]
         [ "my-sxema3"  my-color-sxema3]
      ) 
      [ "my_fontify"    my_fontify]
      [ "my_unfontify"  my_unfontify]
   )
   "---------"
))

;----------------------------------------
(defun my-popup-menu ()  
  (interactive)
  (popup-menu my-test-popup-menu)
) 
;----------------------------------------
(defun modeline-buffers-menu-pilot (event)
  (interactive "e")
  (popup-menu-and-execute-in-window
   '("Buffers Popup Menu"
     :filter buffers-menu-filter
;     ["List All Buffers" list-buffers t]
     ["Find File"        find-file]
     ["Kill This Buffer" kill-this-buffer]
     "--"
     )
   event))
;----------------------------------------


;(global-set-key 'button3  `my-popup-menu)

(global-set-key 'button3  `modeline-buffers-menu-pilot)

;==============================================================================
;                               FONT & FACES                                    
;==============================================================================
(defun my_fontify ()
  (interactive)
  (font-lock-fontify-buffer)
)
;----------------------------------------
(defun my_unfontify ()
  (interactive)
  (font-lock-unfontify-buffer)
)
;----------------------------------------

;(if (eq my-location 'unix) (progn 
; (set-face-font 'default     "-*-courier-bold-r-*-*-12-*-*-*-*-*-koi8-*") 
; (custom-set-variables '(compilation-window-height 9))
;)
;) 

;(if (eq my-location 'work) 
;(progn
;  (set-face-font 'default     "Courier New:Bold:9::Cyrillic") 
;; (set-face-font 'default     "Courier New:Bold:9::Cyrillic") 
;; (set-face-font 'default     "-*-courier-bold-r-*-*-14-*-*-*-*-*-koi8-*") 
;; (set-face-font 'default     "courb12k:bold:11::") 
; (set-frame-width    (selected-frame) 100) 
; (set-frame-height   (selected-frame) 45) 
; (set-frame-position (selected-frame) 190 1)  
; (custom-set-variables '(compilation-window-height 7))
;)
;) 
 
;(if (eq my-location 'home) (progn
; (set-face-font 'default     "Courier New:Bold:9::Cyrillic") 
; (set-frame-width    (selected-frame) 100) 
; (set-frame-height   (selected-frame) 38) 
; (set-frame-position (selected-frame) 160 1)  
; (custom-set-variables '(compilation-window-height 7))
;)) 
 
;==============================================================================

;(set-frame-width    (selected-frame) 85) 
;(set-frame-width    (selected-frame) 90)
 
;(set-frame-width    (selected-frame) 95) ; а здесь нормально меняет
;(set-frame-height   (selected-frame) 46) 

;(set-frame-position (selected-frame) 300 44)

; надо сделать побольше окошко, все равно редко использую сейчас
; 
;(custom-set-variables '(compilation-window-height 6))
(custom-set-variables '(compilation-window-height 10))

;==============================================================================
;                                 COLORS                                      
;==============================================================================
(load "font-lock") 

;(setq font-lock-support-mode 'fast-lock-mode)  


;----------------------------------------
(defun my-color-sxema0 ()
 (interactive)

 (set-face-background 'default "bisque")
 (set-face-foreground 'default "black")  

 ;(set-face-background 'highlight    "yellow") ;
 ;(set-face-background 'isearch      "yellow") ; When highlighting  while searching

 (set-face-foreground 'font-lock-comment-face       "Red")    
 (set-face-foreground 'font-lock-string-face 	    "purple") 
 (set-face-foreground 'font-lock-keyword-face 	    "dark violet")
 (set-face-foreground 'font-lock-function-name-face "Blue")  
 (set-face-foreground 'font-lock-variable-name-face "DarkBlue") 
 (set-face-foreground 'font-lock-type-face	    "DarkGreen") 
 (set-face-foreground 'font-lock-warning-face	    "Red")       
 (set-face-foreground 'font-lock-reference-face     "tomato") 
 (set-face-foreground 'font-lock-preprocessor-face  "forest green") 
 (set-face-foreground 'font-lock-doc-string-face    "chartreuse4")  
) 
;----------------------------------------
(defun my-color-sxema1 ()
 (interactive)

 ;(set-background-color "Black")
 ;(set-foreground-color "White")
 ;(set-cursor-color "Orchid")

 (set-face-foreground 'default "white")
 (set-face-background 'default "black")


 ;(set-face-foreground 'default "black")
 ;(set-face-background 'default "white")
 ;(set-face-background 'highlight "forestgreen")
 ;(set-face-foreground 'highlight "white")
 ;(set-face-background 'zmacs-region "darkgreen")
 ;(set-face-foreground 'zmacs-region "white")
 ;(set-face-foreground 'font-lock-comment-face "Grey")
 ;(set-face-foreground 'font-lock-string-face  "Red")
) 
;----------------------------------------
(defun my-color-sxema2 ()
 (interactive)

 (set-face-background 'default "black")  
 (set-face-foreground 'default "white")  
 (set-face-foreground 'font-lock-comment-face       "Yellow")   
 (set-face-foreground 'font-lock-string-face 	    "OrangeRed") 
 (set-face-foreground 'font-lock-keyword-face 	    "Cyan")        
 (set-face-foreground 'font-lock-function-name-face "LightSkyBlue") 
 (set-face-foreground 'font-lock-variable-name-face "LightGoldenrod") 
 (set-face-foreground 'font-lock-type-face	    "PaleGreen") 
 (set-face-foreground 'font-lock-warning-face	    "Pink") 
 (set-face-foreground 'font-lock-reference-face	    "Yellow") 
 (set-face-foreground 'font-lock-preprocessor-face  "Yellow") 
 (set-face-foreground 'font-lock-doc-string-face    "Yellow") 

) 

;----------------------------------------
(defun my-color-sxema3 ()
 (interactive)
;; Michal's c:\.emacs file

;;;;;; FONT LOCK CONFIGURATION ;;;;;;;;;;;;;;;;;;;;

(cond ((fboundp 'global-font-lock-mode) 

       ;; I like this one better.. 
       (set-background-color "navajo white")
       (setq font-lock-face-attributes
       ;; Symbol-for-Face Foreground Background Bold Italic Underline
	     '((font-lock-builtin-face       "DarkBlue")    ;; outline level 4
	       (font-lock-comment-face       "bisque4")  ;; outline level 5
	       (font-lock-constant-face      "DarkRed")
	       (font-lock-function-name-face "Blue")  ;; outline level 1
	       (font-lock-highlighting-face  "gray")
	       (font-lock-keyword-face       "RoyalBlue") ;; outline level 3
	       (font-lock-reference-face     "Medium Purple")
	       (font-lock-string-face        "Dark Violet")
	       (font-lock-type-face          "Black")
	       (font-lock-variable-name-face "firebrick") ;; outline level 2
	       (font-lock-warning-face       "darkolivegreen")
	       )))


)) 
;----------------------------------------
(defun my-color-sxema9 ()

(setq font-lock-face-attributes
      '((font-lock-comment-face "Orange")
	(font-lock-string-face "LightSalmon")
	(font-lock-keyword-face "SandyBrown")
	(font-lock-function-name-face "Salmon")
	(font-lock-variable-name-face "Sienna1")
	(font-lock-type-face "Goldenrod1")
	(font-lock-reference-face "Goldenrod1")))
) 
;----------------------------------------

( my-color-sxema0 )

;==============================================================================
;                                   LIBRARY                                    
;==============================================================================

(defun my_find_file ()  
  (interactive)
;  (find-file "")
  (find-file "C:")
) 
;----------------------------------------
(defun my_kill_scratch ()  
  (interactive) 
  (kill-buffer "*scratch*")
)  
;----------------------------------------
(defun my_make_scratch ()  
 (interactive)  
 (switch-to-buffer "*scratch*")   
)     
;----------------------------------------
(defun my_toggle_truncate_lines ()
  (interactive)
  (setq truncate-lines (not truncate-lines)))
;----------------------------------------------------------------
; 
;----------------------------------------
(defun my_init_file ()
  (interactive)
  (message "%s" user-init-file)
;  (message "%s" (user-home-directory))
)
;----------------------------------------
(defun my_find_file_init ()
  (interactive)
;  (find-file "C:\\.xemacs\\init.el")
  (find-file user-init-file)
)
;----------------------------------------
(defun my_find_file_init_main ()
  (interactive)
  (find-file "~/.xemacs/init_main.el")
)
;----------------------------------------
;
;----------------------------------------------------------------
(defun my_make_read_only ()
  (interactive)
  (if (not buffer-read-only) (toggle-read-only) nil)
)
;==============================================================================

;; the following snippet was copied from the Oreilly-published  book 
;; "Writing GNU Emacs Extensions" by Bob Glickstein.

(defalias 'scroll-ahead  'scroll-up)
(defalias 'scroll-behind 'scroll-down)

(defun scroll-n-lines-ahead (&optional n)
  "Scroll ahead N lines (1 by default)."
  (interactive "P")
  (progn
    (scroll-ahead (prefix-numeric-value n))
    (next-line 1)))

(defun scroll-n-lines-behind (&optional n)
  "Scroll behind N lines (1 by default)."
  (interactive "P")
  (progn
    (scroll-behind (prefix-numeric-value n))
    (previous-line 1)))

;==============================================================================
;make the y or n suffice for a yes or no question
(fset 'yes-or-no-p 'y-or-n-p)

;; Replace "yes or no" with y or n
;(defun yes-or-no-p (arg)
;  "An alias for y-or-n-p, because I hate having to type 'yes' or 'no'."
;  (y-or-n-p arg))

;==============================================================================
;                                   COMMENTS                                   
;==============================================================================
(defun Make-Comment-To (from)
  (if (string-match " *<.*> *" from)
      (concat (substring from 0 (match-beginning 0)) (substring from
								(match-end 0)))
    (if (string-match "\(.*\)" from)
        (substring from (+ (match-beginning 0) 1) (- (match-end 0) 1))
      from
      )
    )
  )
;-----------------------------------------------
(defun Make-Comment-To (from)
  (if (string-match " *<.*> *" from)
      (concat (substring from 0 (match-beginning 0)) (substring from
								(match-end 0)))
    (if (string-match "\(.*\)" from)
        (substring from (+ (match-beginning 0) 1) (- (match-end 0) 1))
      from
      )
    )
  )
;----------------------------------------
(defun my_comment ()  
 ;
 (interactive)  
 (comment-region (region-beginning) (region-end) '(0))  
)  
;----------------------------------------
(defun my_uncomment ()  
 (interactive)  
 (comment-region (region-beginning) (region-end) '(4))  
)  
;---------------------------------------- 
(defun my_empty ()
  (interactive)
)
;---------------------------------------- 

;==============================================================================
;                                    BUFFERS                                   
;==============================================================================
  
(defun Init-buffers-tab-omit (buf) 
  (if (boundp 'buffers-tab-omit-function) 
      (funcall buffers-tab-omit-function buf) 
    (not (null (string-match "\\` " (buffer-name buf)))))) 
;---------------------------------------- 
(defun switch-to-next-buffer (&optional n) 
  (interactive "p") 
  (dotimes (n (or n 1)) 
    (loop 
      do (bury-buffer (car (buffer-list))) 
      while (Init-buffers-tab-omit (car (buffer-list)))) 
    (switch-to-buffer (car (buffer-list))))) 
;---------------------------------------- 
(defun buffers-menu-omit-invisible-buffers (buf) 
  (not (null (string-match "\\` " (buffer-name buf))))) 
;---------------------------------------- 
(defvar Init-buffers-tab-grouping-regexp  
  '("^\\(gnus-\\|message-mode\\|mime/viewer-mode\\)" 
    "^\\(emacs-lisp-\\|lisp-\\)") 
  ) 
;---------------------------------------- 
(defun Init-select-buffers-tab-buffers (buffer-to-select buf1) 
  (if (boundp 'buffers-tab-selection-function) 
      (funcall buffers-tab-selection-function buffer-to-select buf1) 
    (let ((mode1 (symbol-name (symbol-value-in-buffer 'major-mode buf1))) 
	  (mode2 (symbol-name (symbol-value-in-buffer 'major-mode  
						      buffer-to-select))) 
	  (modenm1 (symbol-value-in-buffer 'mode-name buf1)) 
	  (modenm2 (symbol-value-in-buffer 'mode-name buffer-to-select))) 
      (cond ((or (eq mode1 mode2) 
		 (eq modenm1 modenm2) 
		 (and (string-match "^[^-]+-" mode1) 
		      (string-match 
		       (concat "^" (regexp-quote  
				    (substring mode1 0 (match-end 0)))) 
		       mode2)) 
		 (and Init-buffers-tab-grouping-regexp 
		      (find-if #'(lambda (x) 
				   (or 
				    (and (string-match x mode1) 
					 (string-match x mode2)) 
				    (and (string-match x modenm1) 
					 (string-match x modenm2)))) 
			       Init-buffers-tab-grouping-regexp))) 
	     t) 
	    (t nil))))) 
;---------------------------------------- 
(defun switch-to-previous-buffer (&optional n) 
  (interactive "p") 
  (dotimes (n (or n 1)) 
    (loop 
      do (switch-to-buffer (car (last (buffer-list)))) 
      while (Init-buffers-tab-omit (car (buffer-list)))))) 
;---------------------------------------- 
(defun my_kill_buf_win ()
  (interactive)
  (kill-this-buffer)
  (delete-window)
)

;==============================================================================
;                                 LISP-MODE                                    
;==============================================================================
(defun describe-foo-at-point ()
  "Show the documentation of the Elisp function and variable near point.
This checks in turn:

-- for a function name where point is
-- for a variable name where point is
-- for a surrounding function call
"
  (interactive)
  (let (sym)
    ;; sigh, function-at-point is too clever.  we want only the first half.
    (cond ((setq sym (ignore-errors
		       (with-syntax-table emacs-lisp-mode-syntax-table
			 (save-excursion
			   (or (not (zerop (skip-syntax-backward "_w")))
			       (eq (char-syntax (char-after (point))) ?w)
			       (eq (char-syntax (char-after (point))) ?_)
			       (forward-sexp -1))
			   (skip-chars-forward "`'")
			   (let ((obj (read (current-buffer))))
			     (and (symbolp obj) (fboundp obj) obj))))))
	   (describe-function sym))
	  ((setq sym (variable-at-point)) (describe-variable sym))
	  ;; now let it operate fully -- i.e. also check the
	  ;; surrounding sexp for a function call.
	  ((setq sym (function-at-point)) (describe-function sym))))
)
;---------------------------------------- 

;(add-hook 'lisp-mode-hook
;          (lambda ()
;            (set-face-background 'modeline "red" (current-buffer))))

;==============================================================================
;                                SEARCH-REPLACE                                
;==============================================================================


(custom-set-variables
 '(case-fold-search  nil)
 '(isearch-highlight-all-matches nil)
)

;==============================================================================
;                                  EDIT                              
;==============================================================================
 
;----------------------------------------
(defun my_cut_select ()  
  (interactive)
  ;(if (selection-exists-p) (message "sel-exist")  (message "not-sel-exist"))
  (if (selection-exists-p) (kill-primary-selection)  (kill-entire-line))
) 
;----------------------------------------
(defun my_delete_line ()  
 (interactive)  
 (beginning-of-line)   
 (kill-line)  
)  
;----------------------------------------
(defun Init-kill-entire-line (&optional arg)
  (interactive "*P")
  (let ((kill-whole-line t))
    (beginning-of-line)
    (call-interactively 'kill-line)))
;----------------------------------------

(custom-set-variables
 ;any operation that sets the primary selection will also set the clipboard
 ;'(selection-sets-clipboard t)
 
 '(kill-whole-line t)
)

;==============================================================================
;                                TRANSLATE                              
;==============================================================================


(setq 
;my-wi-ko-str1 "\223\224\270\271\015" 
;my-wi-ko-str2 "\042\042e# "
;my-wi-str "юабцдефгхийклмнопярстужвьызшэщчъЮАБЦДЕФГХИЙКЛМНОПЯРСТУЖВЬЫЗШЭЩЧЪ" 
;my-ko-str "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя"

;my-delret1 "\n"
;my-delret2 " "
;my-delret1 "\r"
;my-delret2 " "
my-delret1 "\015"
my-delret2 " "
)

;(defconst my-ko-wi-table (make-char-table 'generic))
;(defconst my-wi-ko-table (make-char-table 'generic))

(defconst my-delret-table (make-char-table 'generic))
;-----------------------------------------------
(defun my-set-char-table (str1 str2 table)
  (interactive)
  (setq num 0)
  (setq max_num (length str1))


  (while (< num max_num)
    (put-char-table (aref str1 num) (aref str2 num) table)
    (setq num (+ num 1))
  )
)  
;(my-set-char-table my-wi-str my-ko-str my-wi-ko-table)
;(my-set-char-table my-ko-str my-wi-str my-ko-wi-table)          
          
(my-set-char-table my-delret1 my-delret2 my-delret-table)
;-----------------------------------------------
;;Convert DOS cr-lf to UNIX newline
;(defun dos-unix ()
;  (interactive)
;  (goto-char (point-min))
;  (while (search-forward "\r" nil t) (replace-match "")))

;;Convert UNIX newline to DOS cr-lf
;(defun unix-dos ()
;  (interactive)
;  (goto-char (point-min))
;  (while (search-forward "\n" nil t) (replace-match "\r\n")))

;(defun my-ko-wi ()
;  (interactive)
;  ;(unix-dos)
;  (translate-region (point-min) (point-max) my-ko-wi-table)
;)
;(defun my-wi-ko ()
;  (interactive)
;  ;(dos-unix)
;  (translate-region (point-min) (point-max) my-wi-ko-table)
;)

(defun my-delret ()
  (interactive)
  (translate-region (point-min) (point-max) my-delret-table)
)


;==============================================================================
;                                   COMPILE                                    
;==============================================================================

(if my-is-unix 
  (setenv "MAKE_MODE" "UNIX")
  (setq-default compile-command "make")  
; (setq-default compile-command "nmake -k -nologo")  
; (setq-default compile-command "nmake -nologo")  
)
;----------------------------------------
(defun my_save_buffers ()  
  (interactive)  
  (save-some-buffers t)  
)  

;----------------------------------------
(defun my_save_and_build ()  
  (interactive)  
  (save-some-buffers t)  
;  (compile compile-command) 
  (compile "LANG=C make -k all") 
;  (next-error)                                           
)  

;----------------------------------------
(defun my_clean ()  
  (interactive)  
  (save-some-buffers t)  
;  (compile compile-command) 
  (compile "LANG=C make -k clean") 
;  (next-error)                                           
)  
;---------------------------------------------------
; 2004-12-28 
(require 'compile) 

;---------------------------------------------------

;==============================================================================
;                                     C-MODE                                   
;==============================================================================
(defun my-c-help ()  
  (interactive)
  ;(message "%s" (get-clipboard))
  (start-process-shell-command "my_process" nil "dexplore")
) 
;----------------------------------------

(require 'cc-mode)

(defconst my-c-style '(
 (c-echo-syntactic-information-p . t) ; Syntactic info is echoed when line is indented.
 (c-basic-offset                 . 2) ; Basic offset used by + and - symbols
 (c-toggle-auto-state            . nil) ; Toggle auto-newline feature.
 (c-comment-only-line-offset     . 0)   ; Extra offset for line which contains
                                        ; only the start of a comment.
 (c-offsets-alist . ( 
 (string                . +) ; Inside multi-line string.
 (c                     . +) ; Inside a multi-line C style block comment.
 (defun-open            . 0) ; Brace that opens a function definition.
 (defun-close           . 0) ; Brace that closes a function definition.
 (defun-block-intro     . +) ; The first line in a top-level defun.
 (class-open            . 0) ; Brace that opens a class definition.
 (class-close           . 0) ; Brace that closes a class definition.
 (inline-open           . 0) ; Brace that opens an in-class inline method.
 (inline-close          . 0) ; Brace that closes an in-class inline method.
 (func-decl-cont        . +) ; The region between a function definition's
                             ; argument list and the function opening brace
 (knr-argdecl-intro     . +) ; First line of a K&R C argument declaration.
 (knr-argdecl           . +) ; Subsequent lines in a K&R C argument declaration
 (topmost-intro         . 0) ; The first line in a topmost construct definition
 (topmost-intro-cont    . +) ; Topmost definition continuation lines.
 (member-init-intro     . +) ; First line in a member initialization list.
 (member-init-cont      . +) ; Subsequent member initialization list lines.
 (inher-intro           . +) ; First line of a multiple inheritance list.
 (inher-cont            . +) ; Subsequent multiple inheritance lines.
 (block-open            . 0) ; Statement block open brace.
 (block-close           . 0) ; Statement block close brace.
 (brace-list-open       . 0) ; Open brace of an enum or static array list.
 (brace-list-close      . 0) ; Close brace of an enum or static array list.
 (brace-list-intro      . +) ; First line in an enum or static array list.
 (brace-list-entry      . 0) ; Subsequent lines in an enum or static array list.
 (statement             . 0) ; A C (or like) statement.
 (statement-cont        . +) ; A continuation of a C (or like) statement.
 (statement-block-intro . +) ; The first line in a new statement block.
 (statement-case-intro  . +) ; The first line in a case "block".
 (statement-case-open   . 0) ; The first line in a case block starting with brace.

; (substatement          . 0) ; The first line after an if/while/for/do/else.
 (substatement          . +) ; The first line after an if/while/for/do/else.

 (substatement-open     . 0) ; The brace that opens a substatement block.
 (case-label            . 0) ; A `case' or `default' label.
 (access-label          . -) ; C++ private/protected/public access label.
 (label                 . 0) ; Any ordinary label.
 (do-while-closure      . 0) ; The `while' that ends a do/while construct.
 (else-clause           . 0) ; The `else' of an if/else construct.
 (catch-clause          . 0) ; The `catch' or `finally' of a try/catch construct.
 (comment-intro         . 0) ; A line containing only a comment introduction.
 (arglist-intro         . c-lineup-arglist-intro-after-paren) 
                             ; The first line in an argument list.
 (arglist-cont          . c-lineup-arglist) 
                             ; Subsequent argument list lines when no
                             ; arguments follow on the same line as the
                             ; arglist opening paren.
 (arglist-cont-nonempty . +) ; Subsequent argument list lines when at
                             ; least one argument follows on the same
                             ; line as the arglist opening paren.
 (arglist-cont-nonempty . c-lineup-arglist-intro-after-paren)
 (arglist-close         . c-lineup-arglist) ; The solo close paren of an argument list
 (stream-op             . +) ; Lines continuing a stream operator construct.
 (inclass               . +) ; The construct is nested inside a class definition.
                             ; Used together with e.g. `topmost-intro'.
 (cpp-macro             . 0) ; The start of a C preprocessor macro definition.
 (friend                . 0) ; A C++ friend declaration.
 (objc-method-intro     . +) ; The first line of an Objective-C method definition.
 (objc-method-args-cont . +) ; Lines continuing an Objective-C method definition.
 (objc-method-call-cont . +) ; Lines continuing an Objective-C method call.
 (extern-lang-open      . 0) ; Brace that opens an external language block.
 (extern-lang-close     . 0) ; Brace that closes an external language block.
 (inextern-lang         . +) ; Analogous to the `inclass' syntactic symbol,
                             ; but used inside extern constructs.
 ))
    
 )
  "my-c-style")
;--------------------------------------

(defun my-c-mode-common-hook ()
  (c-add-style "pilot" my-c-style t) ; Adds a style to `c-style-alist'
                                     ; and sets the current style using `c-set-style'
  (define-key c-mode-map '(tab) 'c-indent-line-or-region)
  ;(define-key c-mode-map '(control i) 'my_find_file_init)
  (define-key c-mode-map '(control h)    'my-c-help)
)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;==============================================================================
;                                   MISC                                 
;==============================================================================

(setq kill-emacs-query-functions nil) ; 
(line-number-mode	           1) ; 
(column-number-mode	           1) ;
(setq scroll-step	           1) ;  
(setq auto-save-timeout          nil)  
(setq bell-volume                  0)  
(setq sound-alist                nil)
(setq tab-width 2
      ;; this will make sure spaces are used instead of tabs
      indent-tabs-mode nil)
(setq make-backup-files nil)

(custom-set-variables
 '(paren-mode (quote paren) nil (paren))
 '(toolbar-visible-p t) 
 '(signal-error-on-buffer-boundary nil) 
 '(truncate-lines   nil) 
 '(indent-tabs-mode nil)

 '(default-input-method "cyrillic-jcuken") ;;;; koi8
 )

; (set-menubar nil)

;(setq scroll-preserve-screen-position t); make pgup/dn remember current line
;(setq next-line-add-newlines nil)       ; don't scroll past end of file

;(define-key global-map '(shift tab) 'self-insert-command)

;; Initialize sunrise/sunset settings.
;(setq calendar-latitude +38)

;(setq calendar-longitude -122.5)
;(setq calendar-location-name "Ross, CA")
             
;==============================================================================
;                                  ISPELL                                    

; This gives error when trying ispell
;(setq ispell-dictionary "/usr/lib/ispell/norsk.hash")
 
;(setq ispell-dictionary-alist
;      (append ispell-dictionary-alist
;	      (list
;	       (list
;		"russian"
;		"[]"
;		"[]"
;		"[-]"
;		nil
;		nil
;		nil)))
;      ispell-dictionary "russian")


;; When running ispell, consider all 1-3 character words as correct.
;(setq ispell-extra-args '("-W" "3"))


;; For ispell
;(setq ispell-silently-savep t
;      ispell-extra-args '("-W" "3"))

;; For aspell
;(when (exec-installed-p "aspell")
;  (setq-default ispell-program-name "aspell"))
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'koi8-syntax)

;(load "rus-convert")
;(load "rus-display")
;(load "rus-syntax")
;;
;; Ispell
;;
;(setq ispell-dictionary-alist
;      (append ispell-dictionary-alist
;              (list
;               (list
;                "russian"
;                "[A-Za-z]"
;                "[^A-Za-z]"
;                "[\0]"
;                nil
;                nil
;                nil)))
;      ispell-dictionary "russian"
;      ispell-complete-word-dict "/usr/dict/russian.words")

;(setq ispell-program-name "/home/boris/bin/ispell")
;(setq ispell-program-name "ispell -drussian")


;==============================================================================
;                                 TEXT-MODE                                    
;==============================================================================
(setq auto-mode-alist (cons '("\\.txt$"  . text-mode) auto-mode-alist)) 

(require 'filladapt)

(defun my-text-mode-hook ()
  ;(auto-fill-mode 1)
  (turn-on-auto-fill)
  (turn-on-filladapt-mode))
  ;(iso-accents-mode)
(add-hook 'text-mode-hook 'my-text-mode-hook)

;(setq default-major-mode 'text-mode)    ; default mode is text mode
(setq default-fill-column 80)           ; the column beyond which do word wrap

;(define-key text-mode-map '(control i) 'my_find_file_init)

;(autoload 'maniac-fill-mode "maniac" nil t)

;==============================================================================

;fontset - this is nabor shriftov? kotorye emacs podbiraet sebe pri zagruzke
;(set-default-font "fontset-standard")

;(set-language-environment "cyrillic-koi8") 

;(set-charset-ccl-program 'cyrillic-iso8859-5 'ccl-encode-koi8-r-font)
;(set-charset-registry 'ascii "koi8-r")
;(set-charset-registry 'cyrillic-iso8859-5 "koi8-r")

;(set-language-environment "windows-1251") 


;(require 'un-define)
;(require 'jisx0213)
;(set-language-environment "Japanese")
;(set-default-coding-systems 'utf-8)
;(set-terminal-coding-system 'utf-8)

;MULE:

;(require 'un-define)
;(set-coding-priority-list '(utf-8))
;(set-coding-category-system 'utf-8 'utf-8)

;(set-language-environment "Cyrillic-ISO") 

;==============================================================================
;
;==============================================================================

;(setq-default compilation-error-regexp-alist-alist '( 
;(msft ("\\(\\([a-zA-Z]:\\)?[^:( 	\n-]+\\)[:(][ 	]*\\([0-9]+\\)[:) 	]" 1 3)) 
;(of ("\\(\\|[^\n]* on \\)[Ll]ine[ 	]+\\([0-9]+\\)[ 	]+of[ 	]+\"?\\([a-zA-Z]?:?[^\":\n]+\\)\"?:" 3 2)) 
;(msft-sharp ("\\(\\([a-zA-Z]:\\)?[^:(\t\n]+\\)(\\([0-9]+\\)[,]\\([0-9]+\\)): \\(error\\|warning\\) CS[0-9]+:" 1 3 4))
;))

(setq compilation-error-regexp-alist-alist (append '(
(msft-sharp ("\\(\\([a-zA-Z]:\\)?[^:(\t\n]+\\)(\\([0-9]+\\)[,]\\([0-9]+\\)): \\(error\\|warning\\) CS[0-9]+:" 1 3 4))
) compilation-error-regexp-alist-alist ))

(compilation-build-compilation-error-regexp-alist) 

;                                 C-SHARP  
;==============================================================================

(setq auto-mode-alist (cons '("\\.cs\\'" . c-mode) auto-mode-alist)) 
;(setq auto-mode-alist (cons '("\\.cs\\'" . csharp-mode) auto-mode-alist)) 
  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-csharp-init ()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;              C# Mode support
;;;
(autoload 'csharp-mode "cc-mode")

(c-add-style "myC#Style"
  '("C#"
  (c-basic-offset . 2)
  (c-comment-only-line-offset . (0 . 0))
  (c-offsets-alist . (
    (c                     . c-lineup-C-comments)
    (inclass		   . 0)
    (namespace-open	   . +)
    (namespace-close	   . +)
    (innamespace	   . 0)
    (class-open		   . +)
    (class-close	   . 0)
    (inclass		   . 0)
    (defun-open		   . +)
    (defun-block-intro     . 0)
    (inline-open	   . ++)
    (statement-block-intro . 0)
    (brace-list-intro      . +)
    ))
  ))

(defun my-csharp-mode-hook ()
  (cond (window-system
	 (turn-on-font-lock)
	 (c-set-style "myC#Style")
	 )))
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
(setq auto-mode-alist
      (append '(
		("\\.cs$" . csharp-mode)
		) auto-mode-alist ))

(setq compilation-error-regexp-alist
	(append '(
;C# Compiler
;t.cs(6,18): error SC1006: Name of constructor must match name of class
;
("\\(\\([a-zA-Z]:\\)?[^:(\t\n]+\\)(\\([0-9]+\\)[,]\\([0-9]+\\)): \\(error\\|warning\\) CS[0-9]+:" 1 3 4)
        )
	compilation-error-regexp-alist))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
)
;==============================================================================
;                                HTML-MODE                                   
;==============================================================================

(add-hook 'html-mode-hook 
          '(lambda ()

;(define-key html-mode-map '(control i) 'my_find_file_init)
(define-key html-mode-map '(button3)      `my-popup-menu)

))

(custom-set-faces
 '(html-helper-bold-face   ((t (:foreground "gray1"))) t)
 '(html-helper-italic-face ((t (:foreground "gray1"))) t)
)

;==============================================================================

;; HOW TO INSTALL:
;; Put the following forms in your .emacs to enable autoloading of Tcl
;; mode, and auto-recognition of ".tcl" files.
;;
;;   (autoload 'tcl-mode "tcl" "Tcl mode." t)
;;   (autoload 'inferior-tcl "tcl" "Run inferior Tcl process." t)
;;   (setq auto-mode-alist (append '(("\\.tcl$" . tcl-mode)) auto-mode-alist))
;;

; сделаем чтоб понимал короткое расширение "tl" !!!!
;
;
(setq auto-mode-alist (append '(("\\.tl$" . tcl-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.ex$" . tcl-mode)) auto-mode-alist))

; Adaptacao do tcl-mode (defun TCL-indent () 

(setq tcl-indent-level 2) 
(setq tcl-continued-indent-level 2) 

;(setq case-fold-search nil) 
; (tcl-auto-fill-mode) ) 
;==============================================================================
;                                FORTH-MODE                                   
;==============================================================================

(defvar HOME (expand-file-name "~"))

;;; ------
;;; FORTH
;;; ------
;;(defvar GFORTH_EL (concat HOME "/misc/gforth.el"))
(defvar GFORTH_EL (concat HOME "/.xemacs/gforth.el"))

;(cond ((file-readable-p GFORTH_EL)
;  (load-library GFORTH_EL)
;  (autoload 'forth-mode GFORTH_EL)

;  (setq auto-mode-alist (cons '("\\.fs\\'" . forth-mode) auto-mode-alist))

;  (autoload 'forth-block-mode GFORTH_EL)
;  (setq auto-mode-alist (cons '("\\.fb\\'" . forth-block-mode) auto-mode-alist))
;  (add-hook 'forth-mode-hook (function (lambda ()
;    (setq forth-indent-level 4)
;    (setq forth-minor-indent-level 2)
;    (setq forth-hilight-level 3))))
;))

;;==============================================================================

;(autoload 'forth-mode "gforth.el")
(autoload 'forth-mode GFORTH_EL)

;(autoload 'forth-block-mode "gforth.el")
(autoload 'forth-block-mode GFORTH_EL)

(add-to-list 'auto-mode-alist '("\\.fs$" . forth-mode))

; работает, но зачем открывает внизу окошко?
; 
;;==============================================================================

;FUEL provides a complete environment for your Factor coding pleasure
;inside Emacs, including source code edition and interaction with a
;Factor listener instance running within Emacs.

;FUEL was started by Jose A Ortega as an extension to Eduardo Cavazos'
;original factor.el code. Eduardo is also responsible of naming the
;beast.

;* Installation

;  FUEL comes bundled with Factor's distribution. The folder misc/fuel
;  contains Elisp code, and there's a fuel vocabulary in extras/fuel.

;  To install FUEL, either add this line to your Emacs initialisation:

;  (load-file "<path/to/factor/installation>/misc/fuel/fu.el")

;  If all you want is a major mode for editing Factor code with pretty
;  font colors and indentation, without running the factor listener
;  inside Emacs, you can use instead:

;  (add-to-list 'load-path "<path/to/factor/installation>/fuel")
;  (setq factor-mode-use-fuel nil)
;  (require 'factor-mode)
;-----------------------------------------------------------
  ;(load-file "/home/pilot/.MSOFT/factor/0.94/factor/misc/fuel/fu.el")


;  (add-to-list 'load-path "/home/pilot/.MSOFT/factor/0.94/factor/misc/fuel")
;  (setq factor-mode-use-fuel nil)
;  (require 'factor-mode)

;Symbol's function definition is void: face-default-spec

;To ensure normal operation, you should investigate the cause of the error
;in your initialization file and remove it.  Use the `-debug-init' option
;to XEmacs to view a complete error backtrace.

; factor-mode.el ->
; (require 'fuel-font-lock)   PILOT !!!!!!
;-----------------------------------------------------------
;
; emacs/lisp/faces.el :

;(defsubst face-default-spec (face)
;  "Return the default face-spec for FACE, ignoring any user customization.
;If there is no default for FACE, return nil."
;  (get face 'face-defface-spec))


;(setq fuel-listener-factor-binary "/home/pilot/.MSOFT/factor/0.94/factor")
;(setq fuel-listener-factor-image  "/home/pilot/.MSOFT/factor/0.94/factor")


;(add-to-list 'auto-mode-alist '("\\.factor$" . factor-mode))
;(add-to-list 'auto-mode-alist '("\\.fa$" . factor-mode))

;;==============================================================================
;;==============================================================================
