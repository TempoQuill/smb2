Music_ProfOaksPokemonTalk:
	db	040h
	dw	$ffff & Music_ProfOaksPokemonTalk_Ch1
	db	001h
	dw	$ffff & Music_ProfOaksPokemonTalk_Ch2
	db	002h
	dw	$ffff & Music_ProfOaksPokemonTalk_Ch3
	db	003h
;----------------------------------------
Music_ProfOaksPokemonTalk_Ch1:
;----------------------------------------
	db	$da,$00,$a4
;	db	$e5,$77
; P1-1
;	db	$ef,$0f
	db	$e1,$06,$25
	db	$db,$01
	db	$d8,$c,$94
; P1-2
	db	$07
	db	$d4,$c0
	db	$d3,$20
	db	$40
	db	$50
	db	$20
	db	$40
	db	$50
	db	$70
@mainloop:
; P1-3
	db	$45
	db	$20
	db	$d4,$c0
	db	$70
	db	$90
	db	$70
	db	$00
	db	$70
	db	$00
	db	$a0
	db	$b0
; P1-4
	db	$c1
	db	$70
	db	$90
	db	$70
	db	$00
	db	$70
	db	$00
	db	$70
	db	$90
	db	$70
	db	$00
	db	$b3
; P1-5
	db	$d3,$45
	db	$20
	db	$d4,$c0
	db	$90
	db	$c0
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b0
	db	$c0
; P1-6
	db	$70
	db	$b0
	db	$40
	db	$00
	db	$40
	db	$00
	db	$70
	db	$b0
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
; P1-7
	db	$51
	db	$d5,$c0
	db	$d4,$50
	db	$91
	db	$50
	db	$90
	db	$c0
	db	$d3,$20
	db	$d4,$c0
	db	$d3,$20
	db	$d4,$c3
; P1-8
	db	$71
	db	$40
	db	$70
	db	$c1
	db	$70
	db	$c0
	db	$d3,$40
	db	$50
	db	$40
	db	$50
	db	$43
; P1-9
	db	$d4,$b1
	db	$d3,$21
	db	$51
	db	$71
	db	$21
	db	$51
	db	$71
	db	$51
; P1-10
	db	$21
	db	$d4,$b0
	db	$00
	db	$c0
	db	$00
	db	$d3,$20
	db	$00
	db	$40
	db	$00
	db	$50
	db	$00
	db	$60
	db	$00
	db	$70
	db	$00
; P1-11
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_ProfOaksPokemonTalk_Ch2:
;----------------------------------------
; P2-1
	db	$e1,$08,$24
	db	$db,$03
	db	$d8,$c,$a7
;	db	$ef,$ff
; P2-2
	db	$d4,$c0
	db	$d3,$20
	db	$40
	db	$50
	db	$20
	db	$40
	db	$50
	db	$70
	db	$40
	db	$50
	db	$70
	db	$90
	db	$50
	db	$70
	db	$90
	db	$b0
@mainloop:
; P2-3
	db	$c5
	db	$b0
	db	$90
	db	$75
	db	$60
	db	$70
; P2-4
	db	$93
	db	$77
	db	$73
; P2-5
	db	$95
	db	$70
	db	$50
	db	$45
	db	$30
	db	$40
; P2-6
	db	$53
	db	$47
	db	$43
; P2-7
	db	$55
	db	$d4,$c0
	db	$d3,$50
	db	$97
; P2-8
	db	$75
	db	$40
	db	$70
	db	$c7
; P2-9
	db	$b3
	db	$c1
	db	$b1
	db	$93
	db	$b1
	db	$91
; P2-10
	db	$71
	db	$20
	db	$00
	db	$40
	db	$00
	db	$50
	db	$00
	db	$70
	db	$00
	db	$80
	db	$00
	db	$90
	db	$00
	db	$b0
	db	$00
; P2-11
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_ProfOaksPokemonTalk_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$06,$38
	db	$d8,$c,$14
;	db	$ef,$f0
; P3-2
	db	$07
	db	$d4,$70
	db	$50
	db	$40
	db	$20
	db	$50
	db	$40
	db	$20
	db	$d5,$b0
@mainloop:
; P3-3
	db	$dc,$7d
	db	$c5
	db	$dc,$14
	db	$d4,$40
	db	$70
	db	$dc,$7d
	db	$c5
	db	$dc,$14
	db	$40
	db	$20
; P3-4
	db	$dc,$53
	db	$d5,$c3
	db	$dc,$81
	db	$d4,$c7
	db	$dc,$53
	db	$d3,$43
; P3-5
	db	$dc,$7d
	db	$d4,$95
	db	$dc,$14
	db	$40
	db	$90
	db	$dc,$7d
	db	$d5,$95
	db	$dc,$14
	db	$d4,$40
	db	$90
; P3-6
	db	$dc,$7d
	db	$45
	db	$dc,$29
	db	$71
	db	$b1
	db	$91
	db	$71
	db	$41
; P3-7
	db	$51
	db	$03
	db	$dc,$14
	db	$50
	db	$50
	db	$50
	db	$00
	db	$50
	db	$00
	db	$dc,$53
	db	$c3
; P3-8
	db	$71
	db	$03
	db	$dc,$14
	db	$70
	db	$70
	db	$d5,$c0
	db	$00
	db	$c0
	db	$00
	db	$dc,$53
	db	$d4,$c3
; P3-9
	db	$dc,$29
	db	$71
	db	$d3,$71
	db	$d4,$51
	db	$d3,$51
	db	$d4,$21
	db	$d3,$21
	db	$d5,$b1
	db	$d4,$b1
; P3-10
	db	$d5,$71
	db	$d4,$b0
	db	$00
	db	$90
	db	$00
	db	$70
	db	$00
	db	$50
	db	$00
	db	$40
	db	$00
	db	$20
	db	$00
	db	$d5,$b0
	db	$00
; P3-11
	db	$fd,0
	dw	$ffff & @mainloop
