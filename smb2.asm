; -----------------------------------------
; -----------------------------------------
;   Super Mario Bros. 2 (USA) disassembly
;     https://github.com/xkeeper0/smb2/
; -----------------------------------------
; -----------------------------------------

.include "config.asm"
.include "constants.asm"

.ignorenl
INES_MAPPER = MAPPER_MMC5
	MIRROR_4SCREEN = %0000
IFDEF SM_USA
	NAMETABLE_MIRRORING = %0001
ELSE
	NAMETABLE_MIRRORING = %0000
ENDIF
.endinl

; -----------------------------------------
; Add NES header
	.db "NES", $1a ; identification of the iNES header

IFDEF EXPAND_PRG
	.db 16 ; this can go up to 32
ELSE
	.db 8 ; number of 16KB PRG-ROM pages
ENDIF

	.db 16 ; number of 8KB CHR-ROM pages

.db ((INES_MAPPER & %00001111) << 4) | MIRROR_4SCREEN | NAMETABLE_MIRRORING ; mapper (lower nybble) and mirroring
	.dsb 3, $00
	.db $70 ; flags 10
	.dsb 5, $00 ; clear the remaining bytes

; -----------------------------------------
; Add macros
.include "src/macros.asm"

; -----------------------------------------
; Add definitions
.include "src/defs.asm"

; Add RAM definitions
.include "src/ram.asm"

; -----------------------------------------
; Add each of the 16 banks.
; In SMB2, banks are swapped in pairs.
; The game was clearly designed originally to use the MMC1 mapper,
; and very minimal changes were made to make that work.
; These banks are still TECHNICALLY two different banks,
; but due to this little hack a lot of data runs between
; bank boundaries, and it's easier to keep together
; You should split these again if you plan on making any
; really huge modifications...

; ----------------------------------------
; Banks 0 and 1. Basically potpourri.
; Lots of crap everywhere.
; Title screen and some other stuff too.
.base $8000
.include "src/prg-0-1.asm"
.pad $c000, $ff

; ----------------------------------------
; Banks 2 and 3. Enemy/object code.
.base $8000
.include "src/prg-2-3.asm"
.pad $c000, $ff

; ----------------------------------------
; Banks 4 and 5. Music engine and song data.
.base $8000
.include "src/prg-4-5.asm"
.pad $c000, $ff

; ----------------------------------------
; Bank 6 and 7. Level handling ode, I think.
; Hmm, I wonder how this actually works when
; dealing with the fact the level data is
; in another bank...
; Bank 7 is completely empty.
.base $8000
.include "src/prg-6-7.asm"
.pad $c000, $ff

; ----------------------------------------
; Bank 8 and 9. Entirely level data.
; Some more unused space as usual.
.base $8000
.include "src/prg-8-9.asm"
.pad $c000, $ff

; ----------------------------------------
; Banks A and B. Mostly bonus chance,
; character stats, and some PPU commands.
; Lots of empty space here too
.base $8000
.include "src/prg-a-b.asm"
.pad $c000, $ff

; ----------------------------------------
; Banks C and D. The first half is
; a lot of data for the credits.
; The second half is totally empty.
.base $8000
.include "src/prg-c-d.asm"
.pad $c000, $ff

; ----------------------------------------
; extra PRG-ROM pages (8 bank pairs)
IFDEF EXPAND_PRG
.include "src/audio.asm"
ENDIF

; ----------------------------------------
; Banks E and F. Fixed at $C000-FFFF.
; Important things like NMI and often-used
; routines.
; Bank E also contains PCM data for the
; drums and samples.
.base $c000    ; Technically not needed but consistent
.include "src/prg-e-f.asm"


; -----------------------------------------
; include CHR-ROM
IFNDEF SM_USA
.incbin "smb2.chr"
ELSE
.incbin "smusa.chr"
ENDIF

