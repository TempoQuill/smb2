Music_Route29:
	db	060h
	dw	$ffff & Music_Route29_Ch1
	db	001h
	dw	$ffff & Music_Route29_Ch2
	db	002h
	dw	$ffff & Music_Route29_Ch3
	db	003h
	dw	$ffff & Music_Route29_Ch4
;----------------------------------------
Music_Route29_Ch1:
;----------------------------------------
	db	$da,$00,$92
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
	db	$e1,$10,$15
;	db	$ef,$0f
; P1-1
	db	$d8,$c,$b2
	db	$01
@mainloop:
; P1-2
	db	$01
	db	$d3,$11
	db	$51
	db	$13
	db	$d4,$a1
	db	$d3,$11
	db	$d4,$83
; P1-3- tie
	db	$a1
	db	$71
	db	$13
	db	$d3,$31
	db	$d4,$c1
	db	$33
; P1-4- tie
	db	$d3,$11
	db	$51
	db	$13
	db	$d4,$a1
	db	$d3,$11
	db	$d4,$a3
; P1-5
	db	$a1
	db	$11
	db	$31
	db	$81
	db	$11
	db	$13
; P1-6
	db	$81
	db	$d3,$11
	db	$51
	db	$11
	db	$d4,$51
	db	$a1
	db	$d3,$11
	db	$d4,$81
; P1-7
	db	$60
	db	$80
	db	$a1
	db	$11
	db	$71
	db	$31
	db	$d3,$31
	db	$d4,$c3
; P1-8
	db	$51
	db	$d3,$11
	db	$51
	db	$51
	db	$d4,$51
	db	$81
	db	$d3,$11
	db	$d4,$81
; P1-9
	db	$30
	db	$80
	db	$d3,$11
	db	$d4,$c1
	db	$81
	db	$50
	db	$60
	db	$81
	db	$81
	db	$67
; P1-10- tie
	db	$dc,$b4
	db	$a3
	db	$d3,$11
	db	$d4,$a9
; P1-11-tie
	db	$53
	db	$81
	db	$51
	db	$dc,$b2
	db	$85
; P1-12-tie
	db	$dc,$b4
	db	$63
	db	$a1
	db	$81
	db	$61
	db	$dc,$b2
	db	$a3
; P1-13
	db	$dc,$b4
	db	$23
	db	$51
	db	$83
	db	$dc,$b3
	db	$57
; P1-14
	db	$dc,$b4
	db	$a1
	db	$81
	db	$a1
	db	$d3,$13
	db	$dc,$b2
	db	$d4,$a5
; P1-15
	db	$dc,$b4
	db	$81
	db	$51
	db	$81
	db	$d3,$13
	db	$d4,$81
; P1-16
	db	$d3,$31
	db	$11
	db	$d4,$c1
	db	$a1
	db	$dc,$b2
	db	$83
	db	$c3
; P1-17
	db	$dc,$b4
	db	$81
	db	$51
	db	$d3,$11
	db	$d4,$53
	db	$51
	db	$d3,$11
	db	$d4,$51
; P1-18
	db	$83
	db	$d3,$11
	db	$d4,$51
	db	$dc,$b2
	db	$11
	db	$81
	db	$83
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_Route29_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$12,$36
; P2-1
	db	$d8,$c,$c2
	db	$d3,$10
	db	$30
@mainloop:
	db	$fe
	dw	$ffff & @sub1
; P2-5
	db	$60
	db	$50
	db	$31
	db	$31
	db	$d4,$c1
	db	$d3,$11
	db	$d4,$51
	db	$51
	db	$d3,$10
	db	$30
; P2-6
	db	$fe
	dw	$ffff & @sub1
; P2-9
	db	$60
	db	$50
	db	$31
	db	$31
	db	$d4,$c1
	db	$dc,$c4
	db	$d3,$17
; P2-10
	db	$d4,$a1
	db	$a1
	db	$d3,$11
	db	$11
	db	$61
	db	$a1
	db	$81
	db	$61
; P2-11
	db	$d4,$81
	db	$81
	db	$d3,$11
	db	$11
	db	$51
	db	$81
	db	$61
	db	$51
; P2-12
	db	$d4,$61
	db	$61
	db	$a1
	db	$a1
	db	$d3,$31
	db	$61
	db	$51
	db	$31
; P2-13
	db	$51
	db	$31
	db	$21
	db	$31
	db	$21
	db	$d4,$b1
	db	$a1
	db	$81
; P2-14
	db	$a1
	db	$a1
	db	$d3,$11
	db	$11
	db	$61
	db	$a1
	db	$81
	db	$61
; P2-15
	db	$d4,$81
	db	$81
	db	$d3,$11
	db	$11
	db	$51
	db	$81
	db	$61
	db	$51
; P2-16
	db	$61
	db	$51
	db	$31
	db	$61
	db	$dc,$c2
	db	$53
	db	$33
; P2-17
	db	$dc,$c4
	db	$11
	db	$d4,$81
	db	$d3,$51
	db	$d4,$81
	db	$d3,$11
	db	$d4,$81
	db	$d3,$51
	db	$d4,$81
; P2-18
	db	$d3,$11
	db	$d4,$81
	db	$d3,$51
	db	$d4,$81
	db	$dc,$c2
	db	$d3,$11
	db	$11
	db	$11
	db	$d3,$10
	db	$30
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
; P2-2
	db	$51
	db	$51
	db	$81
	db	$81
	db	$11
	db	$31
	db	$51
	db	$11
; P2-3
	db	$60
	db	$50
	db	$31
	db	$d4,$c1
	db	$a1
	db	$81
	db	$d3,$a1
	db	$81
	db	$10
	db	$30
; P2-4
	db	$51
	db	$51
	db	$81
	db	$81
	db	$11
	db	$31
	db	$51
	db	$11
	db	$ff
;----------------------------------------
Music_Route29_Ch3:
;----------------------------------------
;	db	$ef,$f0
; P3-1
	db	$d8,$c,$25
	db	$e1,$9,$27
	db	$01
@mainloop:
; P3-2
	db	$01
	db	$d4,$80
	db	$00
	db	$d3,$10
	db	$00
	db	$50
	db	$02
	db	$50
	db	$00
	db	$d4,$a0
	db	$00
	db	$d3,$50
	db	$00
; P3-3
	db	$d4,$60
	db	$00
	db	$d3,$10
	db	$02
	db	$d4,$a0
	db	$00
	db	$80
	db	$00
	db	$d3,$10
	db	$00
	db	$d4,$c0
	db	$00
	db	$80
	db	$00
; P3-4
	db	$d3,$10
	db	$00
	db	$d4,$80
	db	$00
	db	$d3,$10
	db	$00
	db	$50
	db	$02
	db	$10
	db	$00
	db	$50
	db	$00
	db	$50
	db	$00
; P3-5
	db	$d4,$60
	db	$00
	db	$d3,$10
	db	$00
	db	$d4,$80
	db	$00
	db	$c0
	db	$00
	db	$d3,$50
	db	$00
	db	$d4,$80
	db	$00
	db	$80
	db	$02
; P3-6
	db	$dc,$5f
	db	$53
	db	$83
	db	$d3,$13
	db	$d4,$83
; P3-7
	db	$63
	db	$73
	db	$d3,$13
	db	$d4,$c3
; P3-8
	db	$53
	db	$83
	db	$d3,$13
	db	$dc,$2f
	db	$d4,$81
	db	$51
; P3-9
	db	$81
	db	$d3,$11
	db	$d4,$c1
	db	$81
	db	$d3,$11
	db	$d4,$c1
	db	$d3,$11
	db	$31
; P3-10
	db	$dc,$81
	db	$15
	db	$d4,$65
	db	$dc,$5f
	db	$a3
; P3-11
	db	$dc,$81
	db	$d3,$15
	db	$d4,$85
	db	$dc,$2f
	db	$a1
	db	$b1
; P3-12
	db	$dc,$81
	db	$c5
	db	$85
	db	$dc,$2f
	db	$d3,$31
	db	$61
; P3-13
	db	$dc,$81
	db	$d4,$a5
	db	$dc,$2f
	db	$51
	db	$d3,$51
	db	$21
	db	$d4,$a1
	db	$81
; P3-14
	db	$dc,$81
	db	$a5
	db	$d3,$15
	db	$dc,$5f
	db	$d4,$a3
; P3-15
	db	$dc,$81
	db	$85
	db	$d3,$15
	db	$dc,$2f
	db	$61
	db	$51
; P3-16
	db	$dc,$81
	db	$65
	db	$dc,$2f
	db	$61
	db	$51
	db	$01
	db	$31
	db	$d4,$c1
; P3-17
	db	$dc,$81
	db	$d3,$15
	db	$d4,$85
	db	$dc,$5f
	db	$d3,$13
; P3-18
	db	$53
	db	$13
	db	$d4,$80
	db	$00
	db	$d3,$10
	db	$00
	db	$10
	db	$02
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_Route29_Ch4:
;----------------------------------------
;	db	$ef,$0f
	db	$e3,$000
; P4-1
	db	$d8,$c
	db	$01
@mainloop:
; P4-2
	db	$01
	db	$61
	db	$65
	db	$61
	db	$61
	db	$61
; P4-3
	db	$01
	db	$63
	db	$63
	db	$61
	db	$63
	db	$fd,0
	dw	$ffff & @mainloop


