.ignorenl

; ----------------------------------------
;  Super Mario Bros. 2 Disassembly Config
; ----------------------------------------
;
; By default, this repository is set up to build an identical copy
; of the original PRG0 revision of Super Mario Bros. 2 (USA).
;
; You can tweak the build settings below. To remove
; the default options, comment them out.
; (Changing the assignment to 0 won't work.)
;
; To enable them indefinitely, uncomment the definition.
;
; To enable them for a single build from the command line, use
; build -dFLAGNAME
; For example, to build a PRG1/Rev A ROM,
; build -dREV_A

; ----------------------------------------
; Build PRG1 / Revision A ROM.
;
; Differences:
;
; PRG-2-3: Fixes bug where killing one of the mini FryGuy enemies
;          while changing size from taking damage would cause
;          the enemy to do the "flip over and fall off" death
;          instead of the "puff of smoke" death, which caused
;          the "number of small bosses left" number to not
;          decrease. Which meant the boss fight never ended.
;          Hope you had an extra life and a second controller...
;
; PRG-E-F: Fixes a minor issue when played on PAL consoles where
;          remarkably poor luck would cause the bonus chance screen
;          to end up rendering completely invisibly due to an NMI hitting
;          at the worst possible time.
;          The fix just waits for an NMI cycle before doing its work.
;
; REV_A = 1

; ----------------------------------------
; Build Super Mario USA ROM.
;
; Note: This implicitly enables the Revision A fixes as well.
;
; Differences:
;
; PRG-0-1: Changes to the palette/nametable data for the title screen.
;
; PRG-2-3: "SUPER MARIO USA" added to the end of bank 3 in ASCII, which has
;          no impact on gameplay.
;
; SM_USA = 1

IFDEF SM_USA
  REV_A = 1
ENDIF

; ----------------------------------------
; Patches and enhancements largely useful
; only to people hacking the game


; Expand PRG and/or CHR to max capacity
EXPAND_PRG = 1

; Use MMC5 (mapper 5) instead of MMC3 (mapper 4)
; Based on RetroRain's MMC5 patch (https://www.romhacking.net/hacks/2568)
; MMC5 = 1

GS_MUSIC = 1

.endinl
