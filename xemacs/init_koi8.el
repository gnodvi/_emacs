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

(global-set-key [(Cyrillic_io)] '(lambda () (interactive) (insert "£")))
(global-set-key [(Cyrillic_IO)] '(lambda () (interactive) (insert "³")))

(global-set-key [(Cyrillic_shorti)] '(lambda () (interactive) (insert "Ê")))
(global-set-key [(Cyrillic_SHORTI)] '(lambda () (interactive) (insert "ê")))

(global-set-key [(Cyrillic_ya)] '(lambda () (interactive) (insert "Ñ")))
(global-set-key [(Cyrillic_YA)] '(lambda () (interactive) (insert "ñ")))

(global-set-key [(Cyrillic_yeru)] '(lambda () (interactive) (insert "Ù")))
(global-set-key [(Cyrillic_YERU)] '(lambda () (interactive) (insert "ù")))

(global-set-key [(Cyrillic_ef)] '(lambda () (interactive) (insert "Æ")))
(global-set-key [(Cyrillic_EF)] '(lambda () (interactive) (insert "æ")))

(global-set-key [(Cyrillic_tse)]
   '(lambda ()
        (interactive)
        (insert "Ã")))
(global-set-key [(Cyrillic_TSE)]
   '(lambda ()
        (interactive)
        (insert "ã")))
(global-set-key [(Cyrillic_es)]
   '(lambda ()
        (interactive)
        (insert "Ó")))
(global-set-key [(Cyrillic_ES)]
   '(lambda ()
        (interactive)
        (insert "ó")))
(global-set-key [(Cyrillic_che)]
   '(lambda ()
        (interactive)
        (insert "Þ")))
(global-set-key [(Cyrillic_CHE)]
   '(lambda ()
        (interactive)
        (insert "þ")))
(global-set-key [(Cyrillic_ve)]
   '(lambda ()
        (interactive)
        (insert "×")))
(global-set-key [(Cyrillic_VE)]
   '(lambda ()
        (interactive)
        (insert "÷")))
(global-set-key [(Cyrillic_u)]
   '(lambda ()
        (interactive)
        (insert "Õ")))
(global-set-key [(Cyrillic_U)]
   '(lambda ()
        (interactive)
        (insert "õ")))
(global-set-key [(Cyrillic_em)]
   '(lambda ()
        (interactive)
        (insert "Í")))
(global-set-key [(Cyrillic_EM)]
   '(lambda ()
        (interactive)
        (insert "í")))
(global-set-key [(Cyrillic_a)]
   '(lambda ()
        (interactive)
        (insert "Á")))
(global-set-key [(Cyrillic_A)]
   '(lambda ()
        (interactive)
        (insert "á")))
(global-set-key [(Cyrillic_ie)]
   '(lambda ()
        (interactive)
        (insert "Å")))
(global-set-key [(Cyrillic_IE)]
   '(lambda ()
        (interactive)
        (insert "å")))
(global-set-key [(Cyrillic_ka)]
   '(lambda ()
        (interactive)
        (insert "Ë")))
(global-set-key [(Cyrillic_KA)]
   '(lambda ()
        (interactive)
        (insert "ë")))
(global-set-key [(Cyrillic_te)]
   '(lambda ()
        (interactive)
        (insert "Ô")))
(global-set-key [(Cyrillic_TE)]
   '(lambda ()
        (interactive)
        (insert "ô")))
(global-set-key [(Cyrillic_i)]
   '(lambda ()
        (interactive)
        (insert "É")))
(global-set-key [(Cyrillic_I)]
   '(lambda ()
        (interactive)
        (insert "é")))
(global-set-key [(Cyrillic_er)]
   '(lambda ()
        (interactive)
        (insert "Ò")))
(global-set-key [(Cyrillic_ER)]
   '(lambda ()
        (interactive)
        (insert "ò")))
(global-set-key [(Cyrillic_pe)]
   '(lambda ()
        (interactive)
        (insert "Ð")))
(global-set-key [(Cyrillic_PE)]
   '(lambda ()
        (interactive)
        (insert "ð")))
(global-set-key [(Cyrillic_en)]
   '(lambda ()
        (interactive)
        (insert "Î")))
(global-set-key [(Cyrillic_EN)]
   '(lambda ()
        (interactive)
        (insert "î")))
(global-set-key [(Cyrillic_softsign)]
   '(lambda ()
        (interactive)
        (insert "Ø")))
(global-set-key [(Cyrillic_SOFTSIGN)]
   '(lambda ()
        (interactive)
        (insert "ø")))
(global-set-key [(Cyrillic_o)]
   '(lambda ()
        (interactive)
        (insert "Ï")))
(global-set-key [(Cyrillic_O)]
   '(lambda ()
        (interactive)
        (insert "ï")))
(global-set-key [(Cyrillic_ghe)]
   '(lambda ()
        (interactive)
        (insert "Ç")))
(global-set-key [(Cyrillic_GHE)]
   '(lambda ()
        (interactive)
        (insert "ç")))
(global-set-key [(Cyrillic_be)]
   '(lambda ()
        (interactive)
        (insert "Â")))
(global-set-key [(Cyrillic_BE)]
   '(lambda ()
        (interactive)
        (insert "â")))
(global-set-key [(Cyrillic_el)]
   '(lambda ()
        (interactive)
        (insert "Ì")))
(global-set-key [(Cyrillic_EL)]
   '(lambda ()
        (interactive)
        (insert "ì")))
(global-set-key [(Cyrillic_sha)]
   '(lambda ()
        (interactive)
        (insert "Û")))
(global-set-key [(Cyrillic_SHA)]
   '(lambda ()
        (interactive)
        (insert "û")))
(global-set-key [(Cyrillic_shcha)]
   '(lambda ()
        (interactive)
        (insert "Ý")))
(global-set-key [(Cyrillic_SHCHA)]
   '(lambda ()
        (interactive)
        (insert "ý")))
(global-set-key [(Cyrillic_yu)]
   '(lambda ()
        (interactive)
        (insert "À")))
(global-set-key [(Cyrillic_YU)]
   '(lambda ()
        (interactive)
        (insert "à")))
(global-set-key [(Cyrillic_de)]
   '(lambda ()
        (interactive)
        (insert "Ä")))
(global-set-key [(Cyrillic_DE)]
   '(lambda ()
        (interactive)
        (insert "ä")))
(global-set-key [(Cyrillic_zhe)]
   '(lambda ()
        (interactive)
        (insert "Ö")))
(global-set-key [(Cyrillic_ZHE)]
   '(lambda ()
        (interactive)
        (insert "ö")))
(global-set-key [(Cyrillic_ze)]
   '(lambda ()
        (interactive)
        (insert "Ú")))
(global-set-key [(Cyrillic_ZE)]
   '(lambda ()
        (interactive)
        (insert "ú")))
(global-set-key [(Cyrillic_e)]
   '(lambda ()
        (interactive)
        (insert "Ü")))
(global-set-key [(Cyrillic_E)]
   '(lambda ()
        (interactive)
        (insert "ü")))
(global-set-key [(Cyrillic_ha)]
   '(lambda ()
        (interactive)
        (insert "È")))
(global-set-key [(Cyrillic_HA)]
   '(lambda ()
        (interactive)
        (insert "è")))
(global-set-key [(Cyrillic_hardsign)]
   '(lambda ()
        (interactive)
        (insert "ß")))
(global-set-key [(Cyrillic_HARDSIGN)]
   '(lambda ()
        (interactive)
        (insert "ÿ")))

;==============================================================================
