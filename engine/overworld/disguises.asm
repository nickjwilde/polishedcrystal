ChangeDisguiseMenu:
	call .GetMenuItems
	ld hl, wDisguiseNameBuffer
	; add cancel
	ld e, [hl]
	ld d, 0
	add hl, de
	inc hl
	ld [hl], -1
	call LoadStandardMenuHeader
	ld hl, .DisguisesMenuHeader
	call CopyMenuHeader
	xor a
	ldh [hBGMapMode], a
	call InitScrollingMenu
	xor a
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuJoypad]
	cp B_BUTTON
	ld a, [wMenuSelection]
	jr z, .cancel
	cp -1
	jr z, .cancel
	call GetDisguiseData
	call GetDisguiseSprite
	ret

.cancel
	scf
	ret

.GetMenuItems:
	call .ClearDisguiseBuffer
	call GetUnlockedDisguises
	ret

.ClearDisguiseBuffer:
	ld hl, wDisguiseNameBuffer
	xor a
	ld [hli], a
	ld a, -1
	ld bc, NUM_DISGUISE_NAMES - 1
	rst ByteFill
	ret

.DisguisesMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 1, SCREEN_WIDTH - 2, SCREEN_HEIGHT - 2
	dw .MenuData
	db 1 ; default entry

.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS
	db 8, 0 ; rows, columns
	db SCROLLINGMENU_ITEMS_NORMAL
	dbw 0, wDisguiseNameBuffer
	dba DisguiseMenuItemFunction
	dba NULL 
	dba NULL

DisguiseMenuItemFunction:
	ld a, [wMenuSelection]
	push de
	;call GetDisguiseData
	call GetDisguiseName
	pop hl
	rst PlaceString
	ret 

GetDisguiseData:
	push bc
	ld hl, DisguiseAttributes
	ld bc, DISGUISEATTR_STRUCT_LENGTH
	rst AddNTimes
	pop bc
	ret

GetDisguiseSprite:
	push de
	ld de, DISGUISEATTR_SPRITE
	add hl, de 
	ld a, [hl]
	pop de
	ret

GetDisguiseName:
	push bc
	ld hl, DisguiseNames
	call GetNthString
	ld d, h
	ld e, l
	pop bc
	ret

AppendUnlockedDisguise:
	ld hl, wDisguiseNameBuffer
	inc [hl]
	ld e, [hl]
	ld d, $0
	add hl, de
	ld [hl], a
	ret

FillTempWithMinusOne:
	xor a
	ld hl, wUnlockedDisguises
	ld [hl], a
	inc hl
	ld a, -1
	ld bc, NUM_DISGUISE_NAMES
	rst ByteFill
	ret

GetUnlockedDisguises:
	push bc
	call CheckAllDisguisesFlags
	pop bc
	;ld a, [wUnlockedDisguises]
	;and a if there are no unlocked disguises
	;ret z

	;ld a, c
	;call AppendUnlockedDisguise
	;ld a, -1
	;call AppendUnlockedDisguise
	;scf
	ret

CheckAllDisguisesFlags:
	ld hl, Disguises
.loop
	ld a, [hli]
	cp -1
	ret z

	push hl
	;push af
	;ld b, CHECK_FLAG
	;call DisguiseFlagAction
	;ld a, c
	;and a
	;pop bc
	;ld a, b
	;call nz, AppendDecoIndex
	call AppendUnlockedDisguise
	pop hl
	jr .loop

Disguises:
	db DETECTIVE_PIKACHU
	db FAKE_CHRIS
	db FAKE_KRIS
	db FAKE_MOM
	db FAKE_LYRA
	db FAKE_SILVER
	db FAKE_FALKNER
	db FAKE_BUGSY
	db FAKE_WHITNEY
	db FAKE_MORTY
	db FAKE_CHUCK
	db FAKE_JASMINE
	db FAKE_PRYCE
	db FAKE_CLAIR
	db FAKE_KOGA
	db FAKE_BRUNO
	db FAKE_LANCE
	db FAKE_BROCK
	db FAKE_MISTY
	db FAKE_SURGE
	db FAKE_ERIKA
	db FAKE_JANINE
	db FAKE_SABRINA
	db FAKE_BLAINE
	db FAKE_BLUE
	db FAKE_RED
	db FAKE_LEAF
	db FAKE_YELLOW
	db FAKE_OAK
	db FAKE_ELM
	db FAKE_IVY
	db FAKE_BILL
	db FAKE_EUSINE
	db FAKE_KURT
	db FAKE_REDS_MOM
	db FAKE_DAISY
	db FAKE_LORELEI
	db FAKE_AGATHA
	db FAKE_PALMER
	db FAKE_WALKER
	db FAKE_IMAKUNI
	db FAKE_LAWRENCE
	db FAKE_JAMES
	db FAKE_JESSIE
	db FAKE_PROTON
	db FAKE_PETREL
	db FAKE_ARIANA
	db FAKE_GIOVANNI
	db FAKE_CHERYL
	db FAKE_RILEY
	db FAKE_BUCK
	db FAKE_MARLEY
	db FAKE_MIRA
	db FAKE_ANABEL
	db FAKE_FLANNERY
	db FAKE_MAYLENE
	db FAKE_SKYLA
	db FAKE_VALERIE
	db FAKE_CAITLIN
	db FAKE_DARACH
	db FAKE_STEVEN
	db FAKE_CYNTHIA
	db FAKE_CANDELA
	db FAKE_BLANCHE
	db FAKE_SPARK
	db FAKE_BUENA
	db FAKE_ACE_TRAINER_M
	db FAKE_ACE_TRAINER_F
	db FAKE_AROMA_LADY
	db FAKE_ARTIST
	db FAKE_BAKER
	db FAKE_BATTLE_GIRL
	db FAKE_BEAUTY
	db FAKE_BIKER
	db FAKE_BIRD_KEEPER
	db FAKE_BLACK_BELT
	db FAKE_BOARDER
	db FAKE_BREEDER
	db FAKE_BUG_CATCHER
	db FAKE_BUG_MANIAC
	db FAKE_BURGLAR
	db FAKE_CAMPER
	db FAKE_CHILD
	db FAKE_COOLDUDE
	db FAKE_COSPLAYER
	db FAKE_COWGIRL
	db FAKE_CUTE_GIRL
	db FAKE_DRAGON_TAMER
	db FAKE_ELDER
	db FAKE_ENGINEER
	db FAKE_FAT_GUY
	db FAKE_FIREBREATHER
	db FAKE_FISHER
	db FAKE_GENTLEMAN
	db FAKE_GRAMPS
	db FAKE_GRANNY
	db FAKE_HEX_MANIAC
	db FAKE_HIKER
	db FAKE_JUGGLER
	db FAKE_KIMONO_GIRL
	db FAKE_LADY
	db FAKE_LASS
	db FAKE_MATRON
	db FAKE_NURSE
	db FAKE_OFFICER
	db FAKE_OFFICER_F
	db FAKE_PHARMACIST
	db FAKE_PI
	db FAKE_PICKNICKER
	db FAKE_POKEFAN_M
	db FAKE_POKEFAN_F
	db FAKE_POKEMANIAC
	db FAKE_PSYCHIC
	db FAKE_RICH_BOY
	db FAKE_ROCKER
	db FAKE_ROCKET
	db FAKE_ROCKET_GIRL
	db FAKE_ROUGHNECK
	db FAKE_SAGE
	db FAKE_SAILOR
	db FAKE_SCHOOLBOY
	db FAKE_SCHOOLGIRL
	db FAKE_SCIENTIST
	db FAKE_SCIENTIST_F
	db FAKE_SIGHTSEER_M
	db FAKE_SKIER
	db FAKE_SUPER_NERD
	db FAKE_SWIMMER_M
	db FAKE_SWIMMER_F
	db FAKE_TAMER
	db FAKE_TEACHER
	db FAKE_TWIN
	db FAKE_VETERAN_M
	db FAKE_VETERAN_F
	db FAKE_WAITRESS
	db FAKE_YOUNGSTER
	db FAKE_CLERK
	db FAKE_RECEPTIONIST
	db FAKE_LINK_RECEPTIONIST
	db FAKE_GYM_GUY
	db FAKE_FISHING_GURU
	db FAKE_CLEFAIRY
	db FAKE_FARFETCHD
	db FAKE_LAPRAS
	db FAKE_EEVEE
	db FAKE_DRAGONITE
	db FAKE_MEW
	db FAKE_CELEBI
	db FAKE_ARMORED_MEWTWO
	db -1 ; end 


INCLUDE "data/disguises/attributes.asm"
INCLUDE "data/disguises/names.asm"

