DetectivePikachusOffice_MapScriptHeader:
	def_scene_scripts
	
	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 22
	warp_event  3,  7, GOLDENROD_CITY, 22
	warp_event  2,  0, DETECTIVE_PIKACHUS_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, DetectivePikachusRoomSignText

	def_object_events

DetectivePikachusRoomSignText:
	text "Detective"
	line "Pikachu - PI"
	done
