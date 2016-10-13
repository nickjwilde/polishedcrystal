GetVariant: ; 51040
	ld a, [CurPartySpecies]
	cp UNOWN
	jp z, .GetUnownVariant
	cp ARBOK
	jp z, .GetArbokVariant

.GetPikachuVariant:
; Return Unown letter in UnownLetterOrPikachuVariant based on moves
; hl-8 is ...MonMove1
; hl-7 is ...MonMove2
; hl-6 is ...MonMove3
; hl-5 is ...MonMove4
; hl is ...MonForm

	push bc
	ld bc, EnemyMonForm
	ld a, b
	cp h
	jr nz, .notenemy
	ld a, c
	cp l
	jr nz, .notenemy
	ld a, [wBattleMode]
	cp 2
	jr nz, .notenemy

	ld a, [OtherTrainerClass]
	cp RED
	jr z, .red_pika
	cp YELLOW
	jr z, .yellow_chuchu

.notenemy
	ld bc, TempMonForm
	ld a, b
	cp h
	jr nz, .nottemp
	ld a, c
	cp l
	jr nz, .nottemp
	; skip TempMonID through TempMonSdfEV
rept 11
	dec hl
endr
.nottemp
	pop bc

rept 8
	dec hl
endr
	ld a, 3 ; Surf
	ld [UnownLetterOrPikachuVariant], a
rept 4
	ld a, [hli]
	cp SURF
	ret z
endr

rept 4
	dec hl
endr
	ld a, 2 ; Fly
	ld [UnownLetterOrPikachuVariant], a
rept 4
	ld a, [hli]
	cp FLY
	ret z
endr

.plain
	ld a, 1 ; plain
	ld [UnownLetterOrPikachuVariant], a
	ret

.red_pika
	pop bc
	ld a, 4 ; Pika
	ld [UnownLetterOrPikachuVariant], a
	ret

.yellow_chuchu
	pop bc
	ld a, 5 ; Chuchu
	ld [UnownLetterOrPikachuVariant], a
	ret

.GetUnownVariant:
; Return Unown letter in UnownLetterOrPikachuVariant based on Form at hl
.GetArbokVariant:
; Return Arbok form in UnownLetterOrPikachuVariant based on Form at hl

	; assume Unown Form is 1 to 26
	; assume Arbok Form is 1 or 2
	ld a, [hl]
	and FORM_MASK
	ld [UnownLetterOrPikachuVariant], a
	ret

GetFrontpic: ; 51077
	ld a, [CurPartySpecies]
	ld [CurSpecies], a
	call IsAPokemon
	ret c
	ld a, [rSVBK]
	push af
	call _GetFrontpic
	pop af
	ld [rSVBK], a
	ret

FrontpicPredef: ; 5108b
	ld a, [CurPartySpecies]
	ld [CurSpecies], a
	call IsAPokemon
	ret c
	ld a, [rSVBK]
	push af
	xor a
	ld [hBGMapMode], a
	call _GetFrontpic
	call Function51103
	pop af
	ld [rSVBK], a
	ret

_GetFrontpic: ; 510a5
	push de
	call GetBaseData
	ld a, [BasePicSize]
	and $f
	ld b, a
	push bc
	call GetFrontpicPointer
	ld a, $6
	ld [rSVBK], a
	ld a, b
	ld de, wDecompressScratch + $800
	call FarDecompress
	pop bc
	ld hl, wDecompressScratch
	ld de, wDecompressScratch + $800
	call Function512ab
	pop hl
	push hl
	ld de, wDecompressScratch
	ld c, 7 * 7
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ret

GetFrontpicPointer: ; 510d7
GLOBAL PicPointers, PikachuPicPointers, ArbokPicPointers, UnownPicPointers

	ld a, [CurPartySpecies]
	cp PIKACHU
	jr z, .pikachu
	cp ARBOK
	jr z, .arbok
	cp UNOWN
	jr z, .unown
	ld a, [CurPartySpecies]
	ld d, BANK(PicPointers)
	ld hl, PicPointers
	jr .ok

.pikachu
	ld a, [UnownLetterOrPikachuVariant]
	ld d, BANK(PikachuPicPointers)
	ld hl, PikachuPicPointers
	jr .ok

.arbok
	ld a, [UnownLetterOrPikachuVariant]
	ld d, BANK(ArbokPicPointers)
	ld hl, ArbokPicPointers
	jr .ok

.unown
	ld a, [UnownLetterOrPikachuVariant]
	ld d, BANK(UnownPicPointers)
	ld hl, UnownPicPointers

.ok
	dec a
	ld bc, 6
	call AddNTimes
	ld a, d
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, d
	call GetFarHalfword
	pop bc
	ret

Function51103: ; 51103
	ld a, $1
	ld [rVBK], a
	push hl
	ld de, wDecompressScratch
	ld c, 7 * 7
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ld de, 7 * 7 tiles
	add hl, de
	push hl
	ld a, $1
	ld hl, BasePicSize
	call GetFarWRAMByte
	pop hl
	and $f
	ld de, w6_d800 + 5 * 5 tiles
	ld c, 5 * 5
	cp 5
	jr z, .got_dims
	ld de, w6_d800 + 6 * 6 tiles
	ld c, 6 * 6
	cp 6
	jr z, .got_dims
	ld de, w6_d800 + 7 * 7 tiles
	ld c, 7 * 7
.got_dims

	push hl
	push bc
	call Function5114f
	pop bc
	pop hl
	ld de, wDecompressScratch
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	xor a
	ld [rVBK], a
	ret

Function5114f: ; 5114f
	ld hl, wDecompressScratch
	swap c
	ld a, c
	and $f
	ld b, a
	ld a, c
	and $f0
	ld c, a
	push bc
	call LoadFrontpic
	pop bc
.asm_51161
	push bc
	ld c, $0
	call LoadFrontpic
	pop bc
	dec b
	jr nz, .asm_51161
	ret

GetBackpic: ; 5116c
	ld a, [CurPartySpecies]
	call IsAPokemon
	ret c

	ld a, [CurPartySpecies]
	ld b, a
	ld a, [UnownLetterOrPikachuVariant]
	ld c, a
	ld a, [rSVBK]
	push af
	ld a, $6
	ld [rSVBK], a
	push de

	GLOBAL PicPointers, PikachuPicPointers, ArbokPicPointers, UnownPicPointers
	ld hl, PicPointers
	ld a, b
	ld d, BANK(PicPointers)
	cp PIKACHU
	jr nz, .not_pikachu
	ld hl, PikachuPicPointers
	ld a, c
	ld d, BANK(PikachuPicPointers)
	jr .ok
.not_pikachu
	cp ARBOK
	jr nz, .not_arbok
	ld hl, ArbokPicPointers
	ld a, c
	ld d, BANK(ArbokPicPointers)
	jr .ok
.not_arbok
	cp UNOWN
	jr nz, .ok
	ld hl, UnownPicPointers
	ld a, c
	ld d, BANK(UnownPicPointers)
.ok
	dec a
	ld bc, 6
	call AddNTimes
	ld bc, 3
	add hl, bc
	ld a, d
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, d
	call GetFarHalfword
	ld de, wDecompressScratch
	pop af
	call FarDecompress
	ld hl, wDecompressScratch
	ld c, 6 * 6
	call FixBackpicAlignment
	pop hl
	ld de, wDecompressScratch
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ld [rSVBK], a
	ret

FixPicBank: ; 511c5
	add PICS_FIX
	ret

.PicsBanks: ; 511d4
	db PICS_1
	db PICS_2
	db PICS_3
	db PICS_4
	db PICS_5
	db PICS_6
	db PICS_7
	db PICS_8
	db PICS_9
	db PICS_10
	db PICS_11
	db PICS_12
	db PICS_13
	db PICS_14
	db PICS_15
	db PICS_16
	db PICS_17
	db PICS_18
	db PICS_19
	db PICS_20
	db PICS_20 + 1
	db PICS_20 + 2
	db PICS_20 + 3
	db PICS_20 + 4

Function511ec: ; 511ec
	ld a, c
	push de
	ld hl, PicPointers
	dec a
	ld bc, 6
	call AddNTimes
	ld a, BANK(PicPointers)
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, BANK(PicPointers)
	call GetFarHalfword
	pop af
	pop de
	call FarDecompress
	ret

GetTrainerPic: ; 5120d
	ld a, [TrainerClass]
	and a
	ret z
	cp NUM_TRAINER_CLASSES
	ret nc
	call WaitBGMap
	xor a
	ld [hBGMapMode], a
	ld hl, TrainerPicPointers
	ld a, [TrainerClass]
	dec a
	ld bc, 3
	call AddNTimes
	ld a, [rSVBK]
	push af
	ld a, $6
	ld [rSVBK], a
	push de
	ld a, BANK(TrainerPicPointers)
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, BANK(TrainerPicPointers)
	call GetFarHalfword
	pop af
	ld de, wDecompressScratch
	call FarDecompress
	pop hl
	ld de, wDecompressScratch
	ld c, 7 * 7
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ld [rSVBK], a
	call WaitBGMap
	ld a, $1
	ld [hBGMapMode], a
	ret

DecompressPredef: ; 5125d
; Decompress lz data from b:hl to scratch space at 6:d000, then copy it to address de.

	ld a, [rSVBK]
	push af
	ld a, 6
	ld [rSVBK], a

	push de
	push bc
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	pop bc
	ld de, wDecompressScratch
	pop hl
	ld a, [hROMBank]
	ld b, a
	call Get2bpp

	pop af
	ld [rSVBK], a
	ret

FixBackpicAlignment: ; 5127c
	push de
	push bc
	ld a, [wBoxAlignment]
	and a
	jr z, .keep_dims
	ld a, c
	cp 7 * 7
	ld de, 7 * 7 tiles
	jr z, .got_dims
	cp 6 * 6
	ld de, 6 * 6 tiles
	jr z, .got_dims
	ld de, 5 * 5 tiles

.got_dims
	ld a, [hl]
	ld b, $0
	ld c, $8
.loop
	rra
	rl b
	dec c
	jr nz, .loop
	ld a, b
	ld [hli], a
	dec de
	ld a, e
	or d
	jr nz, .got_dims

.keep_dims
	pop bc
	pop de
	ret

Function512ab: ; 512ab
	ld a, b
	cp 6
	jr z, .six
	cp 5
	jr z, .five

.seven_loop
	ld c, $70
	call LoadFrontpic
	dec b
	jr nz, .seven_loop
	ret

.six
	ld c, $70
	xor a
	call .Fill
.six_loop
	ld c, $10
	xor a
	call .Fill
	ld c, $60
	call LoadFrontpic
	dec b
	jr nz, .six_loop
	ret

.five
	ld c, $70
	xor a
	call .Fill
.five_loop
	ld c, $20
	xor a
	call .Fill
	ld c, $50
	call LoadFrontpic
	dec b
	jr nz, .five_loop
	ld c, $70
	xor a
	call .Fill
	ret

.Fill:
	ld [hli], a
	dec c
	jr nz, .Fill
	ret

LoadFrontpic: ; 512f2
	ld a, [wBoxAlignment]
	and a
	jr nz, .x_flip
.left_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .left_loop
	ret

.x_flip
	push bc
.right_loop
	ld a, [de]
	inc de
	ld b, a
	xor a
	rept 8
	rr b
	rla
	endr
	ld [hli], a
	dec c
	jr nz, .right_loop
	pop bc
	ret
