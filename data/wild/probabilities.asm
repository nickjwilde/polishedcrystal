GrassMonProbTable:
	table_width 1, GrassMonProbTable
	db 20  ; 20% chance
	db 40  ; 20% chance
	db 60  ; 20% chance
	db 70  ; 10% chance
	db 80  ; 10% chance
	db 90  ; 10% chance
	db 100 ; 10% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 1, WaterMonProbTable
	db 40  ; 40% chance
	db 70  ; 30% chance
	db 100 ; 30% chance
	assert_table_length NUM_WATERMON
