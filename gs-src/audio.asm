.base $8000
.include "gs-src/audio/engine.asm"
.include "gs-src/audio/music-pointers.asm"
.include "gs-src/audio/music/nothing.asm"
.include "gs-src/audio/cry-pointers.asm"
.include "gs-src/audio/sfx-pointers.asm"
.include "gs-src/audio/music/route1.asm"
.include "gs-src/audio/music/route3.asm"
.include "gs-src/audio/music/route11.asm"
.include "gs-src/audio/music/kantogymbattle.asm"
.include "gs-src/audio/music/kantotrainerbattle.asm"
.include "gs-src/audio/music/kantowildbattle.asm"
.include "gs-src/audio/music/pokemoncenter.asm"
.include "gs-src/audio/music/looklass.asm"
.include "gs-src/audio/music/lookofficer.asm"
.include "gs-src/audio/music/route2.asm"
.include "gs-src/audio/music/showmearound.asm"
.include "gs-src/audio/music/gamecorner.asm"
.include "gs-src/audio/music/bicycle.asm"
.include "gs-src/audio/music/looksage.asm"
.include "gs-src/audio/music/pokemonchannel.asm"
.include "gs-src/audio/music/lighthouse.asm"
Audio_SFX_END:
IF Audio_SFX_END > $c000
	ERROR "Bank grew too big. Must be within 16K of memory."
ENDIF
.align $4000, $00

.base $18000
.include "gs-src/audio/music/lakeofrage.asm"
.include "gs-src/audio/music/indigoplateau.asm"
.include "gs-src/audio/music/route38.asm"
.include "gs-src/audio/music/rockethideout.asm"
.include "gs-src/audio/music/dragonsden.asm"
.include "gs-src/audio/music/ruinsofalphradio.asm"
.include "gs-src/audio/music/lookbeauty.asm"
.include "gs-src/audio/music/route26.asm"
.include "gs-src/audio/music/ecruteakcity.asm"
.include "gs-src/audio/music/lakeofragerocketradio.asm"
.include "gs-src/audio/music/magnettrain.asm"
.include "gs-src/audio/music/lavendertown.asm"
.include "gs-src/audio/music/dancinghall.asm"
.include "gs-src/audio/music/contestresults.asm"
.include "gs-src/audio/music/route30.asm"

.include "gs-src/audio/music/violetcity.asm"
.include "gs-src/audio/music/route29.asm"
.include "gs-src/audio/music/halloffame.asm"
.include "gs-src/audio/music/healpokemon.asm"
.include "gs-src/audio/music/evolution.asm"
.include "gs-src/audio/music/printer.asm"

.include "gs-src/audio/music/credits.asm"
.include "gs-src/audio/music/theend.asm"

.include "gs-src/audio/music/viridiancity.asm"
.include "gs-src/audio/music/celadoncity.asm"
.include "gs-src/audio/music/wildpokemonvictory.asm"
.include "gs-src/audio/music/gymleadervictory.asm"
.include "gs-src/audio/music/mtmoonsquare.asm"
.include "gs-src/audio/music/gym.asm"
.include "gs-src/audio/music/pallettown.asm"
.include "gs-src/audio/music/profoakspokemontalk.asm"
.include "gs-src/audio/music/profoak.asm"
.include "gs-src/audio/music/lookrival.asm"
.include "gs-src/audio/music/victoryroad.asm"
.include "gs-src/audio/music/ruinsofalphinterior.asm"
Music0_End:
IF Music0_End > $1c000
	ERROR "Bank grew too big. Must be within 16K of memory."
ENDIF
.align $4000, $00

.base $28000
.include "gs-src/audio/music/surf.asm"
.include "gs-src/audio/music/nationalpark.asm"
.include "gs-src/audio/music/azaleatown.asm"

.include "gs-src/audio/sfx-audio.asm"
IFNDEF BETA_SFX
	.include "gs-src/data/pokemon/pokemon-cries.asm"
ENDIF
.include "gs-src/audio/cries.asm"
Music1_End:
IF Music1_End > $2c000
	ERROR "Bank grew too big. Must be within 16K of memory."
ENDIF
.align $4000, $00

.base $38000
.include "gs-src/audio/music/cherrygrovecity.asm"
.include "gs-src/audio/music/unioncave.asm"
.include "gs-src/audio/music/johtowildbattle.asm"
.include "gs-src/audio/music/johtotrainerbattle.asm"
.include "gs-src/audio/music/tintower.asm"
.include "gs-src/audio/music/sprouttower.asm"
.include "gs-src/audio/music/burnedtower.asm"
.include "gs-src/audio/music/pokemonlullaby.asm"
.include "gs-src/audio/music/pokemonmarch.asm"
.include "gs-src/audio/music/goldsilveropening.asm"
.include "gs-src/audio/music/goldsilveropening2.asm"
.include "gs-src/audio/music/lookhiker.asm"
.include "gs-src/audio/music/rockettheme.asm"
.include "gs-src/audio/music/lookkimonogirl.asm"
.include "gs-src/audio/music/pokeflutechannel.asm"
.include "gs-src/audio/music/bugcatchingcontest.asm"

.include "gs-src/audio/music/route34.asm"
.include "gs-src/audio/music/rivalbattle.asm"
.include "gs-src/audio/music/rocketbattle.asm"
.include "gs-src/audio/music/elmslab.asm"
.include "gs-src/audio/music/darkcave.asm"
.include "gs-src/audio/music/johtogymbattle.asm"
.include "gs-src/audio/music/championbattle.asm"
.include "gs-src/audio/music/newbarktown.asm"
.include "gs-src/audio/music/goldenrodcity.asm"
.include "gs-src/audio/music/lookpokemaniac.asm"
.include "gs-src/audio/music/trainervictory.asm"
Music2_End:
IF Music2_End > $3c000
	ERROR "Bank grew too big. Must be within 16K of memory."
ENDIF
.align $4000, $00

.base $48000
.include "gs-src/audio/music/mom.asm"
.include "gs-src/audio/music/mainmenu.asm"
.include "gs-src/audio/music/ssaqua.asm"
.include "gs-src/audio/music/vermilioncity.asm"
.include "gs-src/audio/music/titlescreen.asm"
.include "gs-src/audio/music/mtmoon.asm"
.include "gs-src/audio/music/lookyoungster.asm"
IFDEF BETA_SFX
	.include "gs-src/data/pokemon/pokemon-cries.asm"
ENDIF
Music3_End:
IF Music3_End > $4a000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00
; dpcm
.incbin "gs-src/data/dmc/bank-1.bin"
.align $2000, $55
.incbin "gs-src/data/dmc/bank-2.bin"
.align $2000, $55
.incbin "gs-src/data/dmc/bank-3.bin"
.align $2000, $55
.incbin "gs-src/data/dmc/bank-4.bin"
.align $2000, $55
.incbin "gs-src/data/dmc/bank-5.bin"
.align $2000, $55
