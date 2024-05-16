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
	LDA zWindow1
	PHA
	LDA #PRG_Audio
	JSR PushLower16K
	JSR _UpdateSound
	PLA
	JSR PushLower16K
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
IFDEF EXPAND_AUDIO
	LDA #$13
	STA rEXMIX
ENDIF
	JSR _PlayMusic
	BNE @Done
@Skip:
	JSR _InitSound
@Done:
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

WaitSFX:
	JSR CheckSFX
	RCC
	LDA #1
	JSR DelayFrames
	JMP WaitSFX

SkipMusic:
	REQ
	SEC
	SBC #1
	JSR UpdateSound
	BCS SkipMusic

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

GetLevelMusic:
	STY StackArea + 2
	STA StackArea + 1
	BPL @Play
	AND #$7f
	ASL A
	TAY
	LDA @Specialties, Y
	STA zCurTrackAudioPointer
	LDA @Specialties + 1, Y
	STA zCurTrackAudioPointer + 1
	JMP (zCurTrackAudioPointer)
@Play:
	LDY #0
	JSR PlayMusic
	TAY
	JSR PlayMusic
	LDY StackArea + 2
	LDA StackArea + 1
	RTS

@Specialties:
	dw @Overworld
	dw @Inside
	dw @Boss
	dw @Wart

@Overworld:
	LDY CurrentWorld
	LDA OverworldMusicdIndexex, Y
	BNE @Play
@Inside:
	LDY CurrentLevel
	LDA InsideMusicIndexes, Y
	BNE @Play
@Boss:
	LDY CurrentLevel
	TYA
	SEC
@Loop:
	SBC #3
	BCS @Loop
	LDA BsosMusicIndexes, Y
	BNE @Play
@Wart:
	LDY CurrentLevel
	LDA WartMusicIndexes, Y
	BNE @Play
