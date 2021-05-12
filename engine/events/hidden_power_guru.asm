Special_HiddenPowerGuru:
	farcall SelectMonFromParty
	jr c, .cancel
	ld a, MON_IS_EGG
	call GetPartyParamLocation
	bit MON_IS_EGG_F, [hl]
	jr nz, .egg
	assert MON_IS_EGG == MON_FORM
	ld a, [hl]
	ld hl, wNamedObjectIndex+1
	ld [hld], a
	ld a, [wCurPartySpecies]
	ld [hl], a
	call GetPokemonName
	call CopyPokemonName_Buffer1_Buffer3
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1DVs
	call GetPartyLocation
	farcall GetHiddenPowerType
	ld [wNamedObjectIndex], a
	farcall GetTypeName
	ld a, 2
.done
	ldh [hScriptVar], a
	ret

.cancel
	xor a
	jr .done

.egg
	ld a, 1
	jr .done
