disguise: MACRO
	; type, name, unlocked flag, sprite
	db \1, \2
	dw \3
	db \4
ENDM

DisguiseAttributes:
	table_width DISGUISEATTR_STRUCT_LENGTH, DisguiseAttributes
	disguise DISGUISE_POKEMON, DETECTIVE_PIKACHU, EVENT_GOT_DETECTIVE_PIKACHU, SPRITE_PIKACHU
	disguise DISGUISE_HUMAN, FAKE_CHRIS, -1, SPRITE_CHRIS
	disguise DISGUISE_HUMAN, FAKE_KRIS, -1, SPRITE_KRIS
	disguise DISGUISE_HUMAN, FAKE_MOM, -1, SPRITE_MOM
	disguise DISGUISE_HUMAN, FAKE_LYRA, -1, SPRITE_LYRA
	disguise DISGUISE_HUMAN, FAKE_SILVER, -1, SPRITE_SILVER
	disguise DISGUISE_HUMAN, FAKE_FALKNER, EVENT_BEAT_FALKNER, SPRITE_FALKNER
	disguise DISGUISE_HUMAN, FAKE_BUGSY, EVENT_BEAT_BUGSY, SPRITE_BUGSY
	disguise DISGUISE_HUMAN, FAKE_WHITNEY, EVENT_BEAT_WHITNEY, SPRITE_WHITNEY
	disguise DISGUISE_HUMAN, FAKE_MORTY, EVENT_BEAT_MORTY, SPRITE_MORTY
	disguise DISGUISE_HUMAN, FAKE_CHUCK, EVENT_BEAT_CHUCK, SPRITE_CHUCK
	disguise DISGUISE_HUMAN, FAKE_JASMINE, EVENT_BEAT_JASMINE, SPRITE_JASMINE
	disguise DISGUISE_HUMAN, FAKE_PRYCE, EVENT_BEAT_PRYCE, SPRITE_PRYCE
	disguise DISGUISE_HUMAN, FAKE_CLAIR, EVENT_BEAT_CLAIR, SPRITE_CLAIR
	disguise DISGUISE_HUMAN, FAKE_KOGA, EVENT_BEAT_ELITE_4_KOGA, SPRITE_KOGA
	disguise DISGUISE_HUMAN, FAKE_BRUNO, EVENT_BEAT_ELITE_4_BRUNO, SPRITE_BRUNO
	disguise DISGUISE_HUMAN, FAKE_LANCE, EVENT_BEAT_CHAMPION_LANCE, SPRITE_LANCE
	disguise DISGUISE_HUMAN, FAKE_BROCK, EVENT_BEAT_BROCK, SPRITE_BROCK
	disguise DISGUISE_HUMAN, FAKE_MISTY, EVENT_BEAT_MISTY, SPRITE_MISTY
	disguise DISGUISE_HUMAN, FAKE_SURGE, EVENT_BEAT_LTSURGE, SPRITE_SURGE
	disguise DISGUISE_HUMAN, FAKE_ERIKA, EVENT_BEAT_ERIKA, SPRITE_ERIKA
	disguise DISGUISE_HUMAN, FAKE_JANINE, EVENT_BEAT_JANINE, SPRITE_JANINE
	disguise DISGUISE_HUMAN, FAKE_SABRINA, EVENT_BEAT_SABRINA, SPRITE_SABRINA
	disguise DISGUISE_HUMAN, FAKE_BLAINE, EVENT_BEAT_BLAINE, SPRITE_BLAINE
	disguise DISGUISE_HUMAN, FAKE_BLUE, EVENT_BEAT_BLUE, SPRITE_BLUE
	disguise DISGUISE_HUMAN, FAKE_RED, EVENT_BEAT_RED, SPRITE_RED
	disguise DISGUISE_HUMAN, FAKE_LEAF, EVENT_BEAT_LEAF, SPRITE_LEAF
	disguise DISGUISE_HUMAN, FAKE_YELLOW, EVENT_BEAT_YELLOW, SPRITE_YELLOW
	disguise DISGUISE_HUMAN, FAKE_OAK, EVENT_BEAT_PROF_OAK, SPRITE_OAK
	disguise DISGUISE_HUMAN, FAKE_ELM, EVENT_BEAT_PROF_ELM, SPRITE_ELM
	disguise DISGUISE_HUMAN, FAKE_IVY, EVENT_BEAT_PROF_IVY, SPRITE_IVY
	disguise DISGUISE_HUMAN, FAKE_BILL, EVENT_BEAT_POKEMANIAC_BILL, SPRITE_BILL
	disguise DISGUISE_HUMAN, FAKE_EUSINE, EVENT_BEAT_EUSINE, SPRITE_EUSINE
	disguise DISGUISE_HUMAN, FAKE_KURT, -1, SPRITE_KURT
	disguise DISGUISE_HUMAN, FAKE_REDS_MOM, EVENT_MET_REDS_MOM, SPRITE_REDS_MOM
	disguise DISGUISE_HUMAN, FAKE_DAISY, -1, SPRITE_DAISY
	disguise DISGUISE_HUMAN, FAKE_LORELEI, EVENT_BEAT_LORELEI_AGAIN, SPRITE_LORELEI
	disguise DISGUISE_HUMAN, FAKE_AGATHA, EVENT_BEAT_AGATHA, SPRITE_AGATHA
	disguise DISGUISE_HUMAN, FAKE_PALMER, EVENT_BEAT_PALMER, SPRITE_PALMER
	disguise DISGUISE_HUMAN, FAKE_WALKER, EVENT_BEAT_WALKER, SPRITE_WALKER
	disguise DISGUISE_HUMAN, FAKE_IMAKUNI, EVENT_BEAT_IMAKUNI, SPRITE_IMAKUNI
	disguise DISGUISE_HUMAN, FAKE_LAWRENCE, EVENT_BEAT_LAWRENCE_AGAIN, SPRITE_LAWRENCE
	disguise DISGUISE_HUMAN, FAKE_JAMES, EVENT_BEAT_JESSIE_AND_JAMES, SPRITE_JAMES
	disguise DISGUISE_HUMAN, FAKE_JESSIE, EVENT_BEAT_JESSIE_AND_JAMES, SPRITE_JESSIE
	disguise DISGUISE_HUMAN, FAKE_PROTON, EVENT_BEAT_PROTON_2, SPRITE_PROTON
	disguise DISGUISE_HUMAN, FAKE_PETREL, EVENT_BEAT_PETREL_2, SPRITE_PETREL
	disguise DISGUISE_HUMAN, FAKE_ARIANA, EVENT_BEAT_ARIANA_2, SPRITE_ARIANA
	disguise DISGUISE_HUMAN, FAKE_GIOVANNI, -1, SPRITE_GIOVANNI
	disguise DISGUISE_HUMAN, FAKE_CHERYL, EVENT_BEAT_CHERYL, SPRITE_CHERYL
	disguise DISGUISE_HUMAN, FAKE_RILEY, EVENT_BEAT_RILEY, SPRITE_RILEY
	disguise DISGUISE_HUMAN, FAKE_BUCK, EVENT_BEAT_BUCK, SPRITE_BUCK
	disguise DISGUISE_HUMAN, FAKE_MARLEY, EVENT_BEAT_MARLEY, SPRITE_MARLEY
	disguise DISGUISE_HUMAN, FAKE_MIRA, EVENT_BEAT_MIRA, SPRITE_MIRA
	disguise DISGUISE_HUMAN, FAKE_ANABEL, EVENT_BEAT_ANABEL, SPRITE_ANABEL
	disguise DISGUISE_HUMAN, FAKE_FLANNERY, EVENT_BEAT_FLANNERY, SPRITE_FLANNERY
	disguise DISGUISE_HUMAN, FAKE_MAYLENE, EVENT_BEAT_MAYLENE, SPRITE_MAYLENE
	disguise DISGUISE_HUMAN, FAKE_SKYLA, EVENT_BEAT_SKYLA_AGAIN, SPRITE_SKYLA
	disguise DISGUISE_HUMAN, FAKE_VALERIE, EVENT_BEAT_VALERIE, SPRITE_VALERIE
	disguise DISGUISE_HUMAN, FAKE_CAITLIN, EVENT_BEAT_CAITLIN, SPRITE_CAITLIN
	disguise DISGUISE_HUMAN, FAKE_DARACH, EVENT_BEAT_DARACH, SPRITE_DARACH
	disguise DISGUISE_HUMAN, FAKE_STEVEN, EVENT_BEAT_STEVEN, SPRITE_STEVEN
	disguise DISGUISE_HUMAN, FAKE_CYNTHIA, EVENT_BEAT_CYNTHIA, SPRITE_CYNTHIA
	disguise DISGUISE_HUMAN, FAKE_CANDELA, EVENT_BEAT_CANDELA, SPRITE_CANDELA
	disguise DISGUISE_HUMAN, FAKE_BLANCHE, EVENT_BEAT_BLANCHE, SPRITE_BLANCHE
	disguise DISGUISE_HUMAN, FAKE_SPARK, EVENT_BEAT_SPARK, SPRITE_SPARK
	disguise DISGUISE_HUMAN, FAKE_BUENA, -1, SPRITE_BUENA
	disguise DISGUISE_HUMAN, FAKE_ACE_TRAINER_M, -1, SPRITE_ACE_TRAINER_M
	disguise DISGUISE_HUMAN, FAKE_ACE_TRAINER_F, -1, SPRITE_ACE_TRAINER_F
	disguise DISGUISE_HUMAN, FAKE_AROMA_LADY, -1, SPRITE_AROMA_LADY
	disguise DISGUISE_HUMAN, FAKE_ARTIST, -1, SPRITE_ARTIST
	disguise DISGUISE_HUMAN, FAKE_BAKER, -1, SPRITE_BAKER
	disguise DISGUISE_HUMAN, FAKE_BATTLE_GIRL, -1, SPRITE_BATTLE_GIRL
	disguise DISGUISE_HUMAN, FAKE_BEAUTY, -1, SPRITE_BEAUTY
	disguise DISGUISE_HUMAN, FAKE_BIKER, -1, SPRITE_BIKER
	disguise DISGUISE_HUMAN, FAKE_BIRD_KEEPER, -1, SPRITE_BIRD_KEEPER
	disguise DISGUISE_HUMAN, FAKE_BLACK_BELT, -1, SPRITE_BLACK_BELT
	disguise DISGUISE_HUMAN, FAKE_BOARDER, -1, SPRITE_BOARDER
	disguise DISGUISE_HUMAN, FAKE_BREEDER, -1, SPRITE_BREEDER
	disguise DISGUISE_HUMAN, FAKE_BUG_CATCHER, -1, SPRITE_BUG_CATCHER
	disguise DISGUISE_HUMAN, FAKE_BUG_MANIAC, -1, SPRITE_BUG_MANIAC
	disguise DISGUISE_HUMAN, FAKE_BURGLAR, -1, SPRITE_BURGLAR
	disguise DISGUISE_HUMAN, FAKE_CAMPER, -1, SPRITE_CAMPER
	disguise DISGUISE_HUMAN, FAKE_CHILD, -1, SPRITE_CHILD
	disguise DISGUISE_HUMAN, FAKE_COOLDUDE, -1, SPRITE_COOL_DUDE
	disguise DISGUISE_HUMAN, FAKE_COSPLAYER, -1, SPRITE_COSPLAYER
	disguise DISGUISE_HUMAN, FAKE_COWGIRL, -1, SPRITE_COWGIRL
	disguise DISGUISE_HUMAN, FAKE_CUTE_GIRL, -1, SPRITE_CUTE_GIRL
	disguise DISGUISE_HUMAN, FAKE_DRAGON_TAMER, -1, SPRITE_DRAGON_TAMER
	disguise DISGUISE_HUMAN, FAKE_ELDER, EVENT_GOT_SACREDLAMP, SPRITE_ELDER
	disguise DISGUISE_HUMAN, FAKE_ENGINEER, -1, SPRITE_ENGINEER
	disguise DISGUISE_HUMAN, FAKE_FAT_GUY, -1, SPRITE_FAT_GUY
	disguise DISGUISE_HUMAN, FAKE_FIREBREATHER, -1, SPRITE_FIREBREATHER
	disguise DISGUISE_HUMAN, FAKE_FISHER, -1, SPRITE_FISHER
	disguise DISGUISE_HUMAN, FAKE_GENTLEMAN, EVENT_GOT_JETSKI, SPRITE_GENTLEMAN
	disguise DISGUISE_HUMAN, FAKE_GRAMPS, -1, SPRITE_GRAMPS
	disguise DISGUISE_HUMAN, FAKE_GRANNY, -1, SPRITE_GRANNY
	disguise DISGUISE_HUMAN, FAKE_HEX_MANIAC, -1, SPRITE_HEX_MANIAC
	disguise DISGUISE_HUMAN, FAKE_HIKER, -1, SPRITE_HIKER
	disguise DISGUISE_HUMAN, FAKE_JUGGLER, -1, SPRITE_JUGGLER
	disguise DISGUISE_HUMAN, FAKE_KIMONO_GIRL, EVENT_GOT_HM03_SURF, SPRITE_KIMONO_GIRL
	disguise DISGUISE_HUMAN, FAKE_LADY, -1, SPRITE_LADY
	disguise DISGUISE_HUMAN, FAKE_LASS, -1, SPRITE_LASS
	disguise DISGUISE_HUMAN, FAKE_MATRON, -1, SPRITE_MATRON
	disguise DISGUISE_HUMAN, FAKE_NURSE, -1, SPRITE_NURSE
	disguise DISGUISE_HUMAN, FAKE_OFFICER, -1, SPRITE_OFFICER
	disguise DISGUISE_HUMAN, FAKE_OFFICER_F, -1, SPRITE_OFFICER_F
	disguise DISGUISE_HUMAN, FAKE_PHARMACIST, -1, SPRITE_PHARMACIST
	disguise DISGUISE_HUMAN, FAKE_PI, -1, SPRITE_PI
	disguise DISGUISE_HUMAN, FAKE_PICKNICKER, -1, SPRITE_PICNICKER
	disguise DISGUISE_HUMAN, FAKE_POKEFAN_M, -1, SPRITE_POKEFAN_M
	disguise DISGUISE_HUMAN, FAKE_POKEFAN_F, EVENT_GOT_JETPACK, SPRITE_POKEFAN_F
	disguise DISGUISE_HUMAN, FAKE_POKEMANIAC, -1, SPRITE_POKEMANIAC
	disguise DISGUISE_HUMAN, FAKE_PSYCHIC, -1, SPRITE_PSYCHIC
	disguise DISGUISE_HUMAN, FAKE_RICH_BOY, -1, SPRITE_RICH_BOY
	disguise DISGUISE_HUMAN, FAKE_ROCKER, -1, SPRITE_ROCKER
	disguise DISGUISE_HUMAN, FAKE_ROCKET, -1, SPRITE_ROCKET
	disguise DISGUISE_HUMAN, FAKE_ROCKET_GIRL, -1, SPRITE_ROCKET_GIRL
	disguise DISGUISE_HUMAN, FAKE_ROUGHNECK, -1, SPRITE_ROUGHNECK
	disguise DISGUISE_HUMAN, FAKE_SAGE, -1, SPRITE_SAGE
	disguise DISGUISE_HUMAN, FAKE_SAILOR, -1, SPRITE_SAILOR
	disguise DISGUISE_HUMAN, FAKE_SCHOOLBOY, -1, SPRITE_SCHOOLBOY
	disguise DISGUISE_HUMAN, FAKE_SCHOOLGIRL, -1, SPRITE_SCHOOLGIRL
	disguise DISGUISE_HUMAN, FAKE_SCIENTIST, -1, SPRITE_SCIENTIST
	disguise DISGUISE_HUMAN, FAKE_SCIENTIST_F, -1, SPRITE_SCIENTIST_F
	disguise DISGUISE_HUMAN, FAKE_SIGHTSEER_M, -1, SPRITE_SIGHTSEER_M
	disguise DISGUISE_HUMAN, FAKE_SKIER, -1, SPRITE_SKIER
	disguise DISGUISE_HUMAN, FAKE_SUPER_NERD, -1, SPRITE_SUPER_NERD
	disguise DISGUISE_HUMAN, FAKE_SWIMMER_M, -1, SPRITE_SWIMMER_GUY
	disguise DISGUISE_HUMAN, FAKE_SWIMMER_F, -1, SPRITE_SWIMMER_GIRL
	disguise DISGUISE_HUMAN, FAKE_TAMER, -1, SPRITE_TAMER
	disguise DISGUISE_HUMAN, FAKE_TEACHER, -1, SPRITE_TEACHER
	disguise DISGUISE_HUMAN, FAKE_TWIN, -1, SPRITE_TWIN
	disguise DISGUISE_HUMAN, FAKE_VETERAN_M, -1, SPRITE_VETERAN_M
	disguise DISGUISE_HUMAN, FAKE_VETERAN_F, -1, SPRITE_VETERAN_F
	disguise DISGUISE_HUMAN, FAKE_WAITRESS, -1, SPRITE_WAITRESS
	disguise DISGUISE_HUMAN, FAKE_YOUNGSTER, -1, SPRITE_YOUNGSTER
	disguise DISGUISE_HUMAN, FAKE_CLERK, -1, SPRITE_CLERK
	disguise DISGUISE_HUMAN, FAKE_RECEPTIONIST, -1, SPRITE_RECEPTIONIST
	disguise DISGUISE_HUMAN, FAKE_LINK_RECEPTIONIST, -1, SPRITE_LINK_RECEPTIONIST
	disguise DISGUISE_HUMAN, FAKE_GYM_GUY, EVENT_GOT_PWR_BRACE, SPRITE_GYM_GUY
	disguise DISGUISE_HUMAN, FAKE_FISHING_GURU, -1, SPRITE_FISHING_GURU
	disguise DISGUISE_POKEMON, FAKE_CLEFAIRY, -1, SPRITE_CLEFAIRY
	disguise DISGUISE_POKEMON, FAKE_FARFETCHD, EVENT_HERDED_FARFETCHD, SPRITE_FARFETCH_D
	disguise DISGUISE_POKEMON, FAKE_LAPRAS, -1, SPRITE_LAPRAS
	disguise DISGUISE_POKEMON, FAKE_EEVEE, -1, SPRITE_EEVEE
	disguise DISGUISE_POKEMON, FAKE_DRAGONITE, EVENT_CLEARED_ROCKET_HIDEOUT, SPRITE_DRAGONITE
	disguise DISGUISE_POKEMON, FAKE_MEW, -1, SPRITE_MEW
	disguise DISGUISE_POKEMON, FAKE_CELEBI, -1, SPRITE_CELEBI
	disguise DISGUISE_POKEMON, FAKE_ARMORED_MEWTWO, EVENT_GOT_ARMOR_SUIT, SPRITE_ARMORED_MEWTWO
	assert_table_length NUM_DISGUISE_NAMES
	
