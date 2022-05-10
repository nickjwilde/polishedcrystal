DetectivePikachusRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DetectivePikachusRoomInitializeRoom
	callback MAPCALLBACK_TILES, DetectivePikachusRoomSetSpawn

	def_warp_events
	warp_event 12,  9, DETECTIVE_PIKACHUS_OFFICE, 3
	warp_event 13,  9, DETECTIVE_PIKACHUS_OFFICE, 3

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_UP, DetectivePikachusPC
	bg_event 15,  1, BGEVENT_READ, DetectivePikachusRadio
	bg_event  9,  0, BGEVENT_IFSET, DetectivePikachusRoomPoster

	def_object_events
	object_event  5,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TempGameConsole, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event 10,  6, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TempDoll1, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event 11,  6, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TempDoll2, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  4,  8, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TempBigDoll, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL

DetectivePikachusRoomInitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	endcallback

DetectivePikachusRoomSetSpawn:
	special ToggleMaptileDecorations
	endcallback

TempDoll1:
	describedecoration 1

TempDoll2:
	describedecoration 2

TempBigDoll:
	describedecoration 3

TempGameConsole:
	describedecoration 4

DetectivePikachusRoomPoster:
	dw EVENT_PLAYERS_ROOM_POSTER
	describedecoration 0

DetectivePikachusRadio:

if DEF(DEBUG)

	opentext
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
;	setflag ENGINE_UNOWN_DEX
	; judge machine
	setflag ENGINE_JUDGE_MACHINE
	; all key items
for x, NUM_KEY_ITEMS
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; useful items
for x, POKE_BALL, CHERISH_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL
	giveitem x, 99
endc
endr
	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem DAWN_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem BIG_NUGGET, 99
	giveitem SILVER_LEAF, 99
	giveitem GOLD_LEAF, 99
	giveitem BOTTLE_CAP, 99
	giveitem MULCH, 99
	giveitem MINT_LEAF, 99
	giveitem ODD_SOUVENIR, 10
	giveitem ARMOR_SUIT, 1
	; all decorations except Diploma
for x, EVENT_DECO_BED_1, EVENT_DECO_BIG_LAPRAS_DOLL + 1
	setevent x
endr
	; max money
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 999999
	givecoins 50000
	loadmem wBattlePoints+0, 0
	loadmem wBattlePoints+1, 250
	; all badges
	givebadge ENGINE_ZEPHYRBADGE
	givebadge ENGINE_HIVEBADGE
	givebadge ENGINE_PLAINBADGE
	givebadge ENGINE_FOGBADGE
	givebadge ENGINE_STORMBADGE
	givebadge ENGINE_MINERALBADGE
	givebadge ENGINE_GLACIERBADGE
	givebadge ENGINE_RISINGBADGE
	givebadge ENGINE_BOULDERBADGE
	givebadge ENGINE_CASCADEBADGE
	givebadge ENGINE_THUNDERBADGE
	givebadge ENGINE_RAINBOWBADGE
	givebadge ENGINE_MARSHBADGE
	givebadge ENGINE_SOULBADGE
	givebadge ENGINE_VOLCANOBADGE
	givebadge ENGINE_EARTHBADGE
	setevent EVENT_BEAT_FALKNER
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_BEAT_MORTY
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_JASMINE
	setevent EVENT_BEAT_PRYCE
	setevent EVENT_BEAT_CLAIR
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_BLUE
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_BEAT_ELITE_FOUR_AGAIN
	setevent EVENT_BATTLE_TOWER_OPEN
	clearevent EVENT_BATTLE_TOWER_CLOSED
	; fly anywhere
	setflag ENGINE_FLYPOINT_NEW_BARK
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_UNION_CAVE
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_YELLOW_FOREST
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	setflag ENGINE_FLYPOINT_BLACKTHORN
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_MT_MOON
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_CERULEAN_CAPE
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CINNABAR
	; magnet train works
	setevent EVENT_RESTORED_POWER_TO_KANTO
	; post-e4
	setflag ENGINE_CREDITS_SKIP
	setflag ENGINE_HAVE_SHINY_CHARM
	; good party
	givepoke MEWTWO, NO_FORM, 100, BRIGHTPOWDER
	loadmem wPartyMon1EVs+0, 252
	loadmem wPartyMon1EVs+1, 252
	loadmem wPartyMon1EVs+2, 252
	loadmem wPartyMon1EVs+3, 252
	loadmem wPartyMon1EVs+4, 252
	loadmem wPartyMon1EVs+5, 252
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	loadmem wPartyMon1Personality, ABILITY_2 | NAT_SATK_UP_ATK_DOWN
	loadmem wPartyMon1Stats+0, HIGH(999)
	loadmem wPartyMon1Stats+1, LOW(999)
	loadmem wPartyMon1Stats+2, HIGH(999)
	loadmem wPartyMon1Stats+3, LOW(999)
	loadmem wPartyMon1Stats+4, HIGH(999)
	loadmem wPartyMon1Stats+5, LOW(999)
	loadmem wPartyMon1Stats+6, HIGH(999)
	loadmem wPartyMon1Stats+7, LOW(999)
	loadmem wPartyMon1Stats+8, HIGH(999)
	loadmem wPartyMon1Stats+9, LOW(999)
	; hm slaves
	givepoke MEW, NO_FORM, 100, LEFTOVERS
	givepoke MEW, NO_FORM, 100, LEFTOVERS
	loadmem wPartyMon2Moves+0, FLY
	loadmem wPartyMon2Moves+1, SURF
	loadmem wPartyMon2Moves+2, STRENGTH
	loadmem wPartyMon2Moves+3, CUT
	loadmem wPartyMon2PP+0, 15
	loadmem wPartyMon2PP+1, 15
	loadmem wPartyMon2PP+2, 15
	loadmem wPartyMon2PP+3, 30
	loadmem wPartyMon3Moves+0, FLASH
	loadmem wPartyMon3Moves+1, ROCK_SMASH
	loadmem wPartyMon3Moves+2, HEADBUTT
	loadmem wPartyMon3Moves+3, WATERFALL
	loadmem wPartyMon3PP+0, 20
	loadmem wPartyMon3PP+1, 15
	loadmem wPartyMon3PP+2, 15
	loadmem wPartyMon3PP+3, 15
	; variant form test
	givepoke SLOWKING, GALARIAN_FORM, 50
	givepoke ARTICUNO, GALARIAN_FORM, 50
	givepoke ZAPDOS, GALARIAN_FORM, 50
	givepoke MOLTRES, GALARIAN_FORM, 50
	; fill pokedex
	callasm FillPokedex
	; intro events
	addcellnum PHONE_MOM
	setmapscene PLAYERS_HOUSE_1F, $1
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	setmapscene VERMILION_CITY, $1
;	; prof.elm events
;	addcellnum PHONE_ELM
;	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
;	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_GOT_A_POKEMON_FROM_ELM
;	setevent EVENT_RIVAL_CHERRYGROVE_CITY
;	setevent EVENT_LYRA_IN_ELMS_LAB
;	setmapscene ELMS_LAB, $5
;	setmapscene NEW_BARK_TOWN, $2
	closetext
	end

DetectivePikachuFillPokedex:
	ld a, 1
;	ld [wUnlockedUnownMode], a
	ld [wFirstUnownSeen], a
	ld [wFirstMagikarpSeen], a
;	ld hl, wUnownDex
;	ld a, 1
;rept NUM_UNOWN
;	ld [hli], a
;	inc a
;endr
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, 31 ; 001-248
	rst ByteFill
	ld [hl], %00111111 ; 249-254
	ret

else

	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext DetectivePikachusRadioText1
	pause 45
	writetext DetectivePikachusRadioText2
	pause 45
	writetext DetectivePikachusRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext DetectivePikachusRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext DetectivePikachusRadioText4
	pause 45
	endtext

endc

DetectivePikachusPC:
	opentext
	special Special_PlayersHousePC
	iftrue .Warp
	endtext
.Warp:
	warp NONE, 0, 0
	end

DetectivePikachusRadioText1:
	text "Prof.Oak's #mon"
	line "Talk! Please tune"
	cont "in next time!"
	done

DetectivePikachusRadioText2:
	text "#mon Channel!"
	done

DetectivePikachusRadioText3:
	text "This is DJ Mary,"
	line "your co-host!"
	done

DetectivePikachusRadioText4:
	text "#mon!"
	line "#mon Channel…"
	done
