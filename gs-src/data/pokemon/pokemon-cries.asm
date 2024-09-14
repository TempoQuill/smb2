MACRO mon_cry base, pitch, length
; index, pitch, length
	db base
	IF pitch < 0
		dw $10000 + pitch
	ELSE
		dw pitch
	ENDIF
	dw length
ENDM

PokemonCries:
	mon_cry CRY_GYAOON,      $080,  $081 ; BULBASAUR
	mon_cry CRY_GYAOON,      $020,  $100 ; IVYSAUR
	mon_cry CRY_GYAOON,      $000,  $140 ; VENUSAUR
	mon_cry CRY_RHYHORN,     $060,  $0c0 ; CHARMANDER
	mon_cry CRY_RHYHORN,     $020,  $0c0 ; CHARMELEON
	mon_cry CRY_RHYHORN,     $000,  $100 ; CHARIZARD
	mon_cry CRY_KARABATHEO,  $060,  $0c0 ; SQUIRTLE
	mon_cry CRY_KARABATHEO,  $020,  $0c0 ; WARTORTLE
	mon_cry CRY_BLASTOISE,   $000,  $100 ; BLASTOISE
	mon_cry CRY_SCYTHER,     $080,  $0a0 ; CATERPIE
	mon_cry CRY_GASTLY,      $0cc,  $081 ; METAPOD
	mon_cry CRY_SCYTHER,     $077,  $0c0 ; BUTTERFREE
	mon_cry CRY_ARCANINE,    $0ee,  $081 ; WEEDLE
	mon_cry CRY_BLASTOISE,   $0ff,  $081 ; KAKUNA
	mon_cry CRY_BLASTOISE,   $060,  $100 ; BEEDRILL
	mon_cry CRY_PIP,         $0df,  $084 ; PIDGEY
	mon_cry CRY_PINSIR,      $028,  $140 ; PIDGEOTTO
	mon_cry CRY_PINSIR,      $011,  $17f ; PIDGEOT
	mon_cry CRY_RATTATA,     $000,  $100 ; RATTATA
	mon_cry CRY_RATTATA,     $020,  $17f ; RATICATE
	mon_cry CRY_SPEAROW,     $000,  $100 ; SPEAROW
	mon_cry CRY_SHELLDER,    $040,  $120 ; FEAROW
	mon_cry CRY_GYARADOS,    $012,  $0c0 ; EKANS
	mon_cry CRY_GYARADOS,    $0e0,  $090 ; ARBOK
	mon_cry CRY_GYAOON,      $0ee,  $081 ; PIKACHU
	mon_cry CRY_NIDOKING,    $0ee,  $088 ; RAICHU
	mon_cry CRY_NIDORAN_M,   $020,  $0c0 ; SANDSHREW
	mon_cry CRY_NIDORAN_M,   $0ff,  $17f ; SANDSLASH
	mon_cry CRY_NIDORAN_F,   $000,  $100 ; NIDORAN_F
	mon_cry CRY_NIDORAN_F,   $02c,  $160 ; NIDORINA
	mon_cry CRY_NIDOQUEEN,   $000,  $100 ; NIDOQUEEN
	mon_cry CRY_NIDORAN_M,   $000,  $100 ; NIDORAN_M
	mon_cry CRY_NIDORAN_M,   $02c,  $140 ; NIDORINO
	mon_cry CRY_NIDOKING,    $000,  $100 ; NIDOKING
	mon_cry CRY_CUBONE,      $0cc,  $081 ; CLEFAIRY
	mon_cry CRY_CUBONE,      $0aa,  $0a0 ; CLEFABLE
	mon_cry CRY_GRAVELER,    $04f,  $090 ; VULPIX
	mon_cry CRY_GRAVELER,    $088,  $0e0 ; NINETALES
	mon_cry CRY_PIP,         $0ff,  $0b5 ; JIGGLYPUFF
	mon_cry CRY_PIP,         $068,  $0e0 ; WIGGLYTUFF
	mon_cry CRY_KARABATHEO,  $0e0,  $100 ; ZUBAT
	mon_cry CRY_KARABATHEO,  $0fa,  $100 ; GOLBAT
	mon_cry CRY_IVYSAUR_OLD, $0dd,  $081 ; ODDISH
	mon_cry CRY_IVYSAUR_OLD, $0aa,  $0c0 ; GLOOM
	mon_cry CRY_KINGSAURUS,  $022,  $17f ; VILEPLUME
	mon_cry CRY_STARMIE,     $020,  $160 ; PARAS
	mon_cry CRY_STARMIE,     $042,  $17f ; PARASECT
	mon_cry CRY_TENTACOOL,   $044,  $0c0 ; VENONAT
	mon_cry CRY_TENTACOOL,   $029,  $100 ; VENOMOTH
	mon_cry CRY_EXEGGCUTE,   $0aa,  $081 ; DIGLETT
	mon_cry CRY_EXEGGCUTE,   $02a,  $090 ; DUGTRIO
	mon_cry CRY_CUBONE,      $077,  $090 ; MEOWTH
	mon_cry CRY_CUBONE,      $099,  $17f ; PERSIAN
	mon_cry CRY_36,          $020,  $0e0 ; PSYDUCK
	mon_cry CRY_36,          $0ff,  $0c0 ; GOLDUCK
	mon_cry CRY_NIDOQUEEN,   $0dd,  $0e0 ; MANKEY
	mon_cry CRY_NIDOQUEEN,   $0af,  $0c0 ; PRIMEAPE
	mon_cry CRY_SLOWBRO,     $020,  $0c0 ; GROWLITHE
	mon_cry CRY_ARCANINE,    $000,  $100 ; ARCANINE
	mon_cry CRY_PIP,         $0ff,  $17f ; POLIWAG
	mon_cry CRY_PIP,         $077,  $0e0 ; POLIWHIRL
	mon_cry CRY_PIP,         $000,  $17f ; POLIWRATH
	mon_cry CRY_GASTLY,      $0c0,  $081 ; ABRA
	mon_cry CRY_GASTLY,      $0a8,  $140 ; KADABRA
	mon_cry CRY_GASTLY,      $098,  $17f ; ALAKAZAM
	mon_cry CRY_SLOWBRO,     $0ee,  $081 ; MACHOP
	mon_cry CRY_SLOWBRO,     $048,  $0e0 ; MACHOKE
	mon_cry CRY_SLOWBRO,     $008,  $140 ; MACHAMP
	mon_cry CRY_36,          $055,  $081 ; BELLSPROUT
	mon_cry CRY_PONYTA,      $044,  $0a0 ; WEEPINBELL
	mon_cry CRY_PONYTA,      $066,  $14c ; VICTREEBEL
	mon_cry CRY_TENTACOOL,   $000,  $100 ; TENTACOOL
	mon_cry CRY_TENTACOOL,   $0ee,  $17f ; TENTACRUEL
	mon_cry CRY_GRAVELER,    $0f0,  $090 ; GEODUDE
	mon_cry CRY_GRAVELER,    $000,  $100 ; GRAVELER
	mon_cry CRY_TANGELA,     $0e0,  $0c0 ; GOLEM
	mon_cry CRY_PONYTA,      $000,  $100 ; PONYTA
	mon_cry CRY_PONYTA,      $020,  $140 ; RAPIDASH
	mon_cry CRY_SLOWPOKE,    $000,  $100 ; SLOWPOKE
	mon_cry CRY_SLOWBRO,     $000,  $100 ; SLOWBRO
	mon_cry CRY_GASTLY,      $080,  $0e0 ; MAGNEMITE
	mon_cry CRY_GASTLY,      $020,  $140 ; MAGNETON
	mon_cry CRY_SPEAROW,     $0dd,  $081 ; FARFETCH_D
	mon_cry CRY_EXEGGCUTE,   $0bb,  $081 ; DODUO
	mon_cry CRY_EXEGGCUTE,   $099,  $0a0 ; DODRIO
	mon_cry CRY_LICKITUNG,   $088,  $140 ; SEEL
	mon_cry CRY_LICKITUNG,   $023,  $17f ; DEWGONG
	mon_cry CRY_GRIMER,      $000,  $100 ; GRIMER
	mon_cry CRY_GENGAR,      $0ef,  $17f ; MUK
	mon_cry CRY_SHELLDER,    $000,  $100 ; SHELLDER
	mon_cry CRY_SHELLDER,    $06f,  $160 ; CLOYSTER
	mon_cry CRY_GASTLY,      $000,  $100 ; GASTLY
	mon_cry CRY_GASTLY,      $030,  $0c0 ; HAUNTER
	mon_cry CRY_GENGAR,      $000,  $17f ; GENGAR
	mon_cry CRY_GYARADOS,    $0ff,  $140 ; ONIX
	mon_cry CRY_EXEGGCUTOR,  $088,  $0a0 ; DROWZEE
	mon_cry CRY_EXEGGCUTOR,  $0ee,  $0c0 ; HYPNO
	mon_cry CRY_34,          $020,  $160 ; KRABBY
	mon_cry CRY_34,          $0ee,  $160 ; KINGLER
	mon_cry CRY_VOLTORB,     $0ed,  $100 ; VOLTORB
	mon_cry CRY_VOLTORB,     $0a8,  $110 ; ELECTRODE
	mon_cry CRY_EXEGGCUTE,   $000,  $100 ; EXEGGCUTE
	mon_cry CRY_EXEGGCUTOR,  $000,  $100 ; EXEGGUTOR
	mon_cry CRY_CUBONE,      $000,  $100 ; CUBONE
	mon_cry CRY_IVYSAUR_OLD, $04f,  $0e0 ; MAROWAK
	mon_cry CRY_TANGELA,     $080,  $140 ; HITMONLEE
	mon_cry CRY_LICKITUNG,   $0ee,  $140 ; HITMONCHAN
	mon_cry CRY_LICKITUNG,   $000,  $100 ; LICKITUNG
	mon_cry CRY_TANGELA,     $0e6,  $15d ; KOFFING
	mon_cry CRY_TANGELA,     $0ff,  $17f ; WEEZING
	mon_cry CRY_RHYHORN,     $000,  $100 ; RHYHORN
	mon_cry CRY_RHYDON,      $000,  $100 ; RHYDON
	mon_cry CRY_PINSIR,      $00a,  $140 ; CHANSEY
	mon_cry CRY_TANGELA,     $000,  $100 ; TANGELA
	mon_cry CRY_KANGASKHAN,  $000,  $100 ; KANGASKHAN
	mon_cry CRY_CUBONE,      $099,  $090 ; HORSEA
	mon_cry CRY_CUBONE,      $03c,  $081 ; SEADRA
	mon_cry CRY_SCYTHER,     $080,  $0c0 ; GOLDEEN
	mon_cry CRY_SCYTHER,     $010,  $17f ; SEAKING
	mon_cry CRY_STARMIE,     $002,  $0a0 ; STARYU
	mon_cry CRY_STARMIE,     $000,  $100 ; STARMIE
	mon_cry CRY_34,          $008,  $0c0 ; MR__MIME
	mon_cry CRY_SCYTHER,     $000,  $100 ; SCYTHER
	mon_cry CRY_EXEGGCUTOR,  $0ff,  $17f ; JYNX
	mon_cry CRY_VOLTORB,     $08f,  $17f ; ELECTABUZZ
	mon_cry CRY_RHYHORN,     $0ff,  $0b0 ; MAGMAR
	mon_cry CRY_PINSIR,      $000,  $100 ; PINSIR
	mon_cry CRY_KARABATHEO,  $011,  $0c0 ; TAUROS
	mon_cry CRY_GYARADOS,    $080,  $080 ; MAGIKARP
	mon_cry CRY_GYARADOS,    $000,  $100 ; GYARADOS
	mon_cry CRY_LAPRAS,      $000,  $100 ; LAPRAS
	mon_cry CRY_PIP,         $0ff,  $17f ; DITTO
	mon_cry CRY_TENTACOOL,   $088,  $0e0 ; EEVEE
	mon_cry CRY_TENTACOOL,   $0aa,  $17f ; VAPOREON
	mon_cry CRY_TENTACOOL,   $03d,  $100 ; JOLTEON
	mon_cry CRY_TENTACOOL,   $010,  $0a0 ; FLAREON
	mon_cry CRY_PONYTA,      $0aa,  $17f ; PORYGON
	mon_cry CRY_SLOWBRO,     $0f0,  $081 ; OMANYTE
	mon_cry CRY_SLOWBRO,     $0ff,  $0c0 ; OMASTAR
	mon_cry CRY_SCYTHER,     $0bb,  $0c0 ; KABUTO
	mon_cry CRY_SHELLDER,    $0ee,  $081 ; KABUTOPS
	mon_cry CRY_KINGSAURUS,  $020,  $170 ; AERODACTYL
	mon_cry CRY_GRIMER,      $055,  $081 ; SNORLAX
	mon_cry CRY_NIDOKING,    $080,  $0c0 ; ARTICUNO
	mon_cry CRY_SHELLDER,    $0ff,  $100 ; ZAPDOS
	mon_cry CRY_NIDOKING,    $0f8,  $0c0 ; MOLTRES
	mon_cry CRY_GYAOON,      $060,  $0c0 ; DRATINI
	mon_cry CRY_GYAOON,      $040,  $100 ; DRAGONAIR
	mon_cry CRY_GYAOON,      $03c,  $140 ; DRAGONITE
	mon_cry CRY_STARMIE,     $099,  $17f ; MEWTWO
	mon_cry CRY_STARMIE,     $0ee,  $17f ; MEW
; johto mons
	mon_cry CRY_CHIKORITA,  -$010,  $0b0 ; CHIKORITA
	mon_cry CRY_CHIKORITA,  -$022,  $120 ; BAYLEEF
	mon_cry CRY_CHIKORITA,  -$0b7,  $200 ; MEGANIUM
	mon_cry CRY_GROWL,       $347,  $080 ; CYNDAQUIL
	mon_cry CRY_GROWL,       $321,  $120 ; QUILAVA
	mon_cry CRY_LUGIA,       $f00,  $0d4 ; TYPHLOSION
	mon_cry CRY_ROAR_60,     $46c,  $0e8 ; TOTODILE
	mon_cry CRY_ROAR_60,     $440,  $110 ; CROCONAW
	mon_cry CRY_ROAR_60,     $3fc,  $180 ; FERALIGATR
	mon_cry CRY_PHANPY,      $08a,  $0b8 ; SENTRET
	mon_cry CRY_PHANPY,      $06b,  $102 ; FURRET
	mon_cry CRY_HOOTHOOT,    $091,  $0d8 ; HOOTHOOT
	mon_cry CRY_HOOTHOOT,    $000,  $1a0 ; NOCTOWL
	mon_cry CRY_LEDYBA,      $000,  $0de ; LEDYBA
	mon_cry CRY_LEDYBA,     -$096,  $138 ; LEDIAN
	mon_cry CRY_DERBLE_4,    $011,  $200 ; SPINARAK
	mon_cry CRY_DERBLE_4,   -$0ae,  $1e2 ; ARIADOS
	mon_cry CRY_KARABATHEO, -$010,  $140 ; CROBAT
	mon_cry CRY_GROWL,       $3c9,  $140 ; CHINCHOU
	mon_cry CRY_GROWL,       $2d0,  $110 ; LANTURN
	mon_cry CRY_MOUSE,       $000,  $140 ; PICHU
	mon_cry CRY_COTTONCAT,   $061,  $091 ; CLEFFA
	mon_cry CRY_CHIKORITA,   $0e8,  $0e8 ; IGGLYBUFF
	mon_cry CRY_DERBLE_1,    $010,  $100 ; TOGEPI
	mon_cry CRY_DERBLE_2,    $03b,  $038 ; TOGETIC
	mon_cry CRY_MADAME,     -$067,  $100 ; NATU
	mon_cry CRY_MADAME,     -$0a7,  $168 ; XATU
	mon_cry CRY_BLEET_1,     $022,  $0d8 ; MAREEP
	mon_cry CRY_BLEET_1,    -$007,  $180 ; FLAAFFY
	mon_cry CRY_ROAR_50,    -$07c,  $0e8 ; AMPHAROS
	mon_cry CRY_COTTONCAT,   $084,  $150 ; BELLOSSOM
	mon_cry CRY_CROW,        $11b,  $120 ; MARILL
	mon_cry CRY_CROW,        $0b6,  $180 ; AZUMARILL
	mon_cry CRY_COTTONCAT,   $f40,  $180 ; SUDOWOODO
	mon_cry CRY_COTTONCAT,  -$2a3,  $1c8 ; POLITOED
	mon_cry CRY_COTTONCAT,   $03b,  $0c8 ; HOPPIP
	mon_cry CRY_COTTONCAT,   $027,  $138 ; SKIPLOOM
	mon_cry CRY_COTTONCAT,   $000,  $180 ; JUMPLUFF
	mon_cry CRY_HO_OH,      -$051,  $0e8 ; AIPOM
	mon_cry CRY_CROW,        $12b,  $0b8 ; SUNKERN
	mon_cry CRY_ROAR_40,    -$020,  $180 ; SUNFLORA
	mon_cry CRY_ROAR_60,     $031,  $0c8 ; YANMA
	mon_cry CRY_SNEASEL,     $093,  $0af ; WOOPER
	mon_cry CRY_SNEASEL,    -$0c6,  $140 ; QUAGSIRE
	mon_cry CRY_HO_OH,       $0a2,  $140 ; ESPEON
	mon_cry CRY_TENTACOOL,  -$0e9,  $0f0 ; UMBREON
	mon_cry CRY_CROW,       -$01f,  $180 ; MURKROW
	mon_cry CRY_SLOWKING,    $104,  $200 ; SLOWKING
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; MISDREAVUS
	mon_cry CRY_HOOTHOOT,    $162,  $100 ; UNOWN
	mon_cry CRY_ROAR_50,     $27b,  $144 ; WOBBUFFET
	mon_cry CRY_FELINE,      $041,  $200 ; GIRAFARIG
	mon_cry CRY_SLOWKING,    $080,  $100 ; PINECO
	mon_cry CRY_SLOWKING,    $000,  $180 ; FORRETRESS
	mon_cry CRY_GRANBULL,    $1c4,  $100 ; DUNSPARCE
	mon_cry CRY_MILTANK,    -$102,  $100 ; GLIGAR
	mon_cry CRY_LUGIA,       $0ef,  $0f7 ; STEELIX
	mon_cry CRY_GRANBULL,    $112,  $0e8 ; SNUBBULL
	mon_cry CRY_GRANBULL,    $000,  $180 ; GRANBULL
	mon_cry CRY_SLOWKING,    $160,  $0e0 ; QWILFISH
	mon_cry CRY_ROAR_50,     $000,  $160 ; SCIZOR
	mon_cry CRY_GRANBULL,    $290,  $0a8 ; SHUCKLE
	mon_cry CRY_ROAR_50,     $035,  $0e0 ; HERACROSS
	mon_cry CRY_SNEASEL,     $053,  $0af ; SNEASEL
	mon_cry CRY_ROAR_30,     $7a2,  $06e ; TEDDIURSA
	mon_cry CRY_ROAR_30,     $640,  $0d8 ; URSARING
	mon_cry CRY_HITMONTOP,  -$1d8,  $140 ; SLUGMA
	mon_cry CRY_SUICUNE,    -$20d,  $1c0 ; MAGCARGO
	mon_cry CRY_GROWL,       $1fe,  $140 ; SWINUB
	mon_cry CRY_SUICUNE,    -$109,  $100 ; PILOSWINE
	mon_cry CRY_SUICUNE,     $0a1,  $0e8 ; CORSOLA
	mon_cry CRY_ROAR_40,     $00d,  $100 ; REMORAID
	mon_cry CRY_ROAR_60,     $000,  $180 ; OCTILLERY
	mon_cry CRY_ROAR_30,     $002,  $06a ; DELIBIRD
	mon_cry CRY_MANTINE,    -$0be,  $0f0 ; MANTINE
	mon_cry CRY_ROAR_50,     $8a9,  $180 ; SKARMORY
	mon_cry CRY_GROWL,       $039,  $140 ; HOUNDOUR
	mon_cry CRY_ROAR_60,    -$10a,  $100 ; HOUNDOOM
	mon_cry CRY_HITMONTOP,   $2fb,  $100 ; KINGDRA
	mon_cry CRY_PHANPY,      $048,  $230 ; PHANPY
	mon_cry CRY_DONPHAN,     $000,  $1a0 ; DONPHAN
	mon_cry CRY_FELINE,      $073,  $240 ; PORYGON2
	mon_cry CRY_HO_OH,      -$160,  $180 ; STANTLER
	mon_cry CRY_MOUSE,      -$21a,  $1f0 ; SMEARGLE
	mon_cry CRY_HO_OH,       $02c,  $108 ; TYROGUE
	mon_cry CRY_HITMONTOP,   $000,  $100 ; HITMONTOP
	mon_cry CRY_CROW,        $068,  $100 ; SMOOCHUM
	mon_cry CRY_ROAR_40,    -$2d8,  $0b4 ; ELEKID
	mon_cry CRY_ROAR_30,     $176,  $03a ; MAGBY
	mon_cry CRY_MILTANK,    -$1cd,  $1a0 ; MILTANK
	mon_cry CRY_SLOWKING,    $293,  $140 ; BLISSEY
	mon_cry CRY_TYRANITAR,   $22e,  $120 ; RAIKOU
	mon_cry CRY_TIGER,       $000,  $1a0 ; ENTEI
	mon_cry CRY_SUICUNE,     $000,  $180 ; SUICUNE
	mon_cry CRY_TYRANITAR,   $05f,  $0d0 ; LARVITAR
	mon_cry CRY_DERBLE_4,   -$1db,  $150 ; PUPITAR
	mon_cry CRY_TYRANITAR,  -$100,  $180 ; TYRANITAR
	mon_cry CRY_LUGIA,       $000,  $100 ; LUGIA
	mon_cry CRY_HO_OH,       $000,  $180 ; HO_OH
	mon_cry CRY_TIGER,       $14a,  $111 ; CELEBI
;	mon_cry CRY_NIDORAN_M,      0,     0 ; 252
;	mon_cry CRY_NIDORAN_M,      0,     0 ; 253
;	mon_cry CRY_NIDORAN_M,      0,     0 ; 254
;	mon_cry CRY_NIDORAN_M,      0,     0 ; 255
