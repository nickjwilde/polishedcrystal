CharcoalKiln_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 2
	warp_event  4,  7, AZALEA_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_CHARCOAL_KILN_BOSS
	object_event  4,  3, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_CHARCOAL_KILN_APPRENTICE
	object_event  8,  6, SPRITE_FARFETCH_D, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchdScript, EVENT_CHARCOAL_KILN_FARFETCH_D

CharcoalKilnBoss:
	checkevent EVENT_GOT_HM01_CUT
    iftrue CharcoalKilnBossKatana
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

	text "All the Slowpoke"
	line "have disappeared"
	cont "from the town."

	para "The forest's pro-"
	line "tector may be"
	cont "angry with us…"

	para "It may be a bad"
	line "omen. We should"
	cont "stay in."
	done

.Text2:
	text "The Slowpoke have"
	line "returned…"

	para "But my Apprentice"
	line "hasn't come back"
	cont "from Ilex Forest."

	para "Where in the world"
	line "is that lazy guy?"
	done

CharcoalKilnBossKatana:
    checkevent EVENT_GOT_KATANA
	iftrue_jumptextfaceplayer .Text3
    checkevent EVENT_FOUGHT_SUDOWOODO
    iffalse_jumptextfaceplayer SudowoodoHint
    faceplayer
    writetext .MatchIntro
    promptbutton
    winlosstext .BeatKilnBossText, 0
    loadtrainer BLACKBELT_T, QI
    startbattle
    reloadmapafterbattle
    opentext
    writetext .KilnBossGiveKatana
    promptbutton
    verbosegivekeyitem KATANA
    setevent EVENT_GOT_KATANA
    jumpthisopenedtext
        
        text "The forging pro-"
        line "cess makes that"
        cont "sword very sharp."

        para "It may even cut"
        line "solid rock!"
        done

.Text3:
	text "You chased off"
	line "Team Rocket and"

	para "went to Ilex"
	line "Forest alone?"

	para "That takes guts!"
	line "I like that. Come"
	cont "train with us."
	done

.MatchIntro:
    para "So, it was a"
    line "#mon then?"

    para "Well, I've been"
    line "working on some-"
    cont "thing that could"

    para "cut through rock."

    para "But you'll have"
    line "to earn it!"
    done

.BeatKilnBossText:
    text "You've got a"
    line "sharp wit!"
    done

.KilnBossGiveKatana:
    text "You've sharp-"
    line "ened your skill."

    para "You have earned"
    line "this."
    done

SudowoodoHint:
    text "I heard there's"
    line "a tree north"

    para "of Goldenrod"
    line "that can't be"
    cont "cut."

    para "Come see me if"
    line "you cut it down."
    done

CharcoalKilnApprentice:
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue_jumptextfaceplayer .Text3
	checkevent EVENT_GOT_HM01_CUT
	iffalse_jumptextfaceplayer .Text1
	faceplayer
	opentext
	writetext .Text2
	promptbutton
	verbosegiveitem CHARCOAL
	iffalse_endtext
    waitbutton
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	endtext

.Text1:
	text "Where have all the"
	line "Slowpoke gone?"

	para "Are they out play-"
	line "ing somewhere?"
	done

.Text2:
	text "I'm sorry--I for-"
	line "got to thank you."

	para "This is Charcoal"
	line "that I made."

	para "Fire-type #mon"
	line "would be happy to"
	cont "hold that."
	done

.Text3:
	text "The Slowpoke came"
	line "back, and you even"
	cont "found Farfetch'd."

	para "You're the cool-"
	line "est, man!"
	done

CharcoalKilnFarfetchdScript:
	faceplayer
	showcrytext .Text, FARFETCH_D
	end

.Text:
	text "Farfetch'd: Kwaa!"
	done
