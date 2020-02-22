;(define-key global-map '(Cyrillic_shorti) 'self-insert-command)
;(define-key global-map '(Cyrillic_SHORTI) 'self-insert-command)
;(define-key global-map '(Cyrillic_ya) 'self-insert-command)
;(define-key global-map '(Cyrillic_YA) 'self-insert-command)

;(put 'Cyrillic_shorti 'ascii-character 202)
;(put 'Cyrillic_SHORTI 'ascii-character 234)
;(put 'Cyrillic_ya 'ascii-character 209)
;(put 'Cyrillic_YA 'ascii-character 241)

;==============================================================================

;;
;; KOI8 keyboard - The Nasty Hack (tm) for using with xkb
;;

(global-set-key [(iso-next-group)]
  '(lambda ()
     (interactive)
     (play-sound-file _switch-keyboard-sound)))

;----------------------------------------------------------

(global-set-key [(Cyrillic_io)] '(lambda () (interactive) (insert "�")))
(global-set-key [(Cyrillic_IO)] '(lambda () (interactive) (insert "�")))

(global-set-key [(Cyrillic_shorti)] '(lambda () (interactive) (insert "�")))
(global-set-key [(Cyrillic_SHORTI)] '(lambda () (interactive) (insert "�")))

(global-set-key [(Cyrillic_ya)] '(lambda () (interactive) (insert "�")))
(global-set-key [(Cyrillic_YA)] '(lambda () (interactive) (insert "�")))

(global-set-key [(Cyrillic_yeru)] '(lambda () (interactive) (insert "�")))
(global-set-key [(Cyrillic_YERU)] '(lambda () (interactive) (insert "�")))

(global-set-key [(Cyrillic_ef)] '(lambda () (interactive) (insert "�")))
(global-set-key [(Cyrillic_EF)] '(lambda () (interactive) (insert "�")))

(global-set-key [(Cyrillic_tse)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_TSE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_es)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ES)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_che)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_CHE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ve)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_VE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_u)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_U)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_em)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_EM)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_a)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_A)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ie)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_IE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ka)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_KA)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_te)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_TE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_i)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_I)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_er)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ER)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_pe)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_PE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_en)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_EN)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_softsign)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_SOFTSIGN)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_o)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_O)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ghe)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_GHE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_be)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_BE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_el)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_EL)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_sha)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_SHA)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_shcha)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_SHCHA)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_yu)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_YU)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_de)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_DE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_zhe)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ZHE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ze)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ZE)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_e)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_E)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_ha)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_HA)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_hardsign)]
   '(lambda ()
        (interactive)
        (insert "�")))
(global-set-key [(Cyrillic_HARDSIGN)]
   '(lambda ()
        (interactive)
        (insert "�")))

;==============================================================================
