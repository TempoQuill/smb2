InitSound:
	PSH
	LDA zWindow1
	PHA
	LDA #PRG_Audio
	JSR PushLower16K
	JSR _InitSound
	PLA
	JSR PushLower16K
	PLL
	RTS

UpdateSound:
	PSH
	LDA PPUCtrlMirror
	EOR #PPUCtrl_NMIEnabled ; prevents nested NMI
	STA PPUCTRL
	LDA zWindow1
	PHA
	LDA #PRG_Audio
	JSR PushLower16K
	JSR _UpdateSound
	PLA
	JSR PushLower16K
	LDA PPUCtrlMirror
	STA PPUCTRL
	PLL
	RTS

_LoadMusicByte:
	LDX zWindow1
	JSR PushLower16K
	LDY #0
	LDA (zCurTrackAudioPointer), Y
	STA zCurMusicByte
	TXA
	JMP PushLower16K

AddAudioOffset:
	TYA
	CLC
	ADC zCurTrackAudioPointer
	STA zCurTrackAudioPointer
	LDA #0
	ADC zCurTrackAudioPointer + 1
	STA zCurTrackAudioPointer + 1
	RTS

PlayMusic:
	PSH
	LDA zWindow1
	PHA
	LDA #PRG_Audio
	JSR PushLower16K
	TYA
	BEQ @Skip
	LDA #$0f
	STA rMIX
	JSR _PlayMusic
	BNE @Done
@Skip:
	JSR _InitSound
@Done:
	PLA
	JSR PushLower16K
	PLL
	RTS

PlayMusic2:
	PSH
	LDA zWindow1
	PHA
	LDA #PRG_Audio
	JSR PushLower16K
	JSR _InitSound
	TYA
	BEQ @Skip
	LDA #$0f
	STA rMIX
	JSR _PlayMusic
@Skip:
	PLA
	JSR PushLower16K
	PLL
	RTS

PlayCry:
	PSH
	LDA zWindow1
	PHA
	LDA #PRG_MonCries
	JSR PushLower16K
	LDA #>PokemonCries
	STA zCurTrackAudioPointer + 1
	LDA #<PokemonCries
	STA zCurTrackAudioPointer
REPT 5
	JSR AddAudioOffset
ENDR
	LDY #0
	LDA (zCurTrackAudioPointer), Y
	TAX
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryPitch
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryPitch + 1
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryLength
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryLength + 1
	TXA
	TAY
	LDA #PRG_Audio
	JSR PushLower16K
	JSR _PlayCry
	PLA
	JSR PushLower16K
	PLL
	RTS

PlaySFX:
	PSH
	LDA zWindow1
	PHA
	JSR CheckSFX
	BCC @Play
	CPY zCurSFX
	BEQ @Play
	BCS @Skip
@Play:
	STY zCurSFX
	LDA #PRG_Audio
	JSR PushLower16K
	JSR _PlaySFX
@Skip:
	PLA
	JSR PushLower16K
	PLL
	RTS

SkipMusic:
	REQ
	SEC
	SBC #1
	JSR UpdateSound
	BCS SkipMusic

ClearSFX:
	LDA #0
	STA iChannel6 + CHANNEL_FLAGS1
	STA iChannel7 + CHANNEL_FLAGS1
	STA iChannel8 + CHANNEL_FLAGS1
	STA iChannel9 + CHANNEL_FLAGS1
	STA iChannel10 + CHANNEL_FLAGS1
	RTS

CheckSFX:
	LDA iChannel6 + CHANNEL_FLAGS1
	ORA iChannel7 + CHANNEL_FLAGS1
	ORA iChannel8 + CHANNEL_FLAGS1
	ORA iChannel9 + CHANNEL_FLAGS1
	ORA iChannel10 + CHANNEL_FLAGS1
	LSR A
	RTS

TerminateExpBarSound:
	LDA rMIX
	RSB CHAN1
	STA rMIX
	LDA #$10
	STA rNR10
	LDA #0
	STA iChannel6 + CHANNEL_FLAGS1
	STA iChannel6 + CHANNEL_SWEEP
	STA rNR11
	STA rNR12
	STA rNR13
	RTS
