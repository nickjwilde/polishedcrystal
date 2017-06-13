command: macro
	enum \1_command
\1 equs "db \1_command"
endm

	enum_start 1

	command checkturn               ; 01
	command checkobedience          ; 02
	command usedmovetext            ; 03
	command doturn                  ; 04
	command critical                ; 05
	command damagestats             ; 06
	command stab                    ; 07
	command damagevariation         ; 08
	command checkhit                ; 09
	command lowersub                ; 0a
	command hittargetnosub          ; 0b
	command raisesub                ; 0c
	command failuretext             ; 0d
	command checkfaint              ; 0e
	command criticaltext            ; 0f
	command supereffectivetext      ; 10
	command checkdestinybond        ; 11
	command buildopponentrage       ; 12
	command poisontarget            ; 13
	command sleeptarget             ; 14
	command draintarget             ; 15
	command eatdream                ; 16
	command burntarget              ; 17
	command freezetarget            ; 18
	command paralyzetarget          ; 19
	command selfdestruct            ; 1a
	command mirrormove              ; 1b
	command statup                  ; 1c
	command statdown                ; 1d
	command payday                  ; 1e
	command conversion              ; 1f
	command resetstats              ; 20
	command storeenergy             ; 21
	command unleashenergy           ; 22
	command forceswitch             ; 23
	command endloop                 ; 24
	command flinchtarget            ; 25
	command ohko                    ; 26
	command recoil                  ; 27
	command mist                    ; 28
	command focusenergy             ; 29
	command confuse                 ; 2a
	command confusetarget           ; 2b
	command heal                    ; 2c
	command transform               ; 2d
	command screen                  ; 2e
	command poison                  ; 2f
	command paralyze                ; 30
	command substitute              ; 31
	command rechargenextturn        ; 32
	command mimic                   ; 33
	command metronome               ; 34
	command leechseed               ; 35
	command splash                  ; 36
	command disable                 ; 37
	command cleartext               ; 38
	command charge                  ; 39
	command checkcharge             ; 3a
	command traptarget              ; 3b
	command growth                  ; 3c
	command rampage                 ; 3d
	command checkrampage            ; 3e
	command constantdamage          ; 3f
	command counter                 ; 40
	command encore                  ; 41
	command painsplit               ; 42
	command snore                   ; 43
	command conversion2             ; 44
	command lockon                  ; 45
	command sketch                  ; 46
	command defrostopponent         ; 47
	command sleeptalk               ; 48
	command destinybond             ; 49
	command spite                   ; 4a
	command falseswipe              ; 4b
	command healbell                ; 4c
	command kingsrock               ; 4d
	command triplekick              ; 4e
	command kickcounter             ; 4f
	command thief                   ; 50
	command arenatrap               ; 51
	command nightmare               ; 52
	command defrost                 ; 53
	command curse                   ; 54
	command protect                 ; 55
	command spikes                  ; 56
	command foresight               ; 57
	command perishsong              ; 58
	command startsandstorm          ; 59
	command starthail               ; 5a
	command endure                  ; 5b
	command checkcurl               ; 5c
	command rolloutpower            ; 5d
	command bulkup                  ; 5e
	command furycutter              ; 5f
	command attract                 ; 60
	command happinesspower          ; 61
	command present                 ; 62
	command damagecalc              ; 63
	command frustrationpower        ; 64
	command safeguard               ; 65
	command checksafeguard          ; 66
	command getmagnitude            ; 67
	command batonpass               ; 68
	command pursuit                 ; 69
	command clearhazards            ; 6a
	command healmornorday           ; 6b
	command healnite                ; 6c
	command hiddenpower             ; 6d
	command startrain               ; 6e
	command startsun                ; 6f
	command attackup                ; 70
	command defenseup               ; 71
	command speedup                 ; 72
	command specialattackup         ; 73
	command specialdefenseup        ; 74
	command accuracyup              ; 75
	command evasionup               ; 76
	command attackup2               ; 77
	command defenseup2              ; 78
	command speedup2                ; 79
	command specialattackup2        ; 7a
	command specialdefenseup2       ; 7b
	command accuracyup2             ; 7c
	command evasionup2              ; 7d
	command attackdown              ; 7e
	command defensedown             ; 7f
	command speeddown               ; 80
	command specialattackdown       ; 81
	command specialdefensedown      ; 82
	command accuracydown            ; 83
	command evasiondown             ; 84
	command attackdown2             ; 85
	command defensedown2            ; 86
	command speeddown2              ; 87
	command specialattackdown2      ; 88
	command specialdefensedown2     ; 89
	command accuracydown2           ; 8a
	command evasiondown2            ; 8b
	command statupmessage           ; 8c
	command statdownmessage         ; 8d
	command statupfailtext          ; 8e
	command statdownfailtext        ; 8f
	command effectchance            ; 90
	command statdownanim            ; 91
	command statupanim              ; 92
	command switchturn              ; 93
	command bellydrum               ; 94
	command psychup                 ; 95
	command rage                    ; 96
	command doubleflyingdamage      ; 97
	command doubleundergrounddamage ; 98
	command mirrorcoat              ; 99
	command checkfuturesight        ; 9a
	command futuresight             ; 9b
	command doubleminimizedamage    ; 9c
	command skipsuncharge           ; 9d
	command thunderaccuracy         ; 9e
	command teleport                ; 9f
	command beatup                  ; a0
	command ragedamage              ; a1
	command resettypematchup        ; a2
	command allstatsup              ; a3
	command calmmind                ; a4
	command raisesubnoanim          ; a5
	command lowersubnoanim          ; a6
	command dragondance             ; a7
	command honeclaws               ; a8
	command clearmissdamage         ; a9
	command movedelay               ; aa
	command hittarget               ; ab
	command tristatuschance         ; ac
	command supereffectivelooptext  ; ad
	command startloop               ; ae
	command curl                    ; af
	command burn                    ; b0
	command hex                     ; b1
	command bounceback              ; b2

	enum_start -1, -1
	command endmove
	command endturn
