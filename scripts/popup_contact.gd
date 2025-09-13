extends Window

# in pixels max this value (min half its value)
const CLOSE_DISPOSITION_MAGNITUTE = 100.0

# Based on the virus corruption level the game becomes more and more "annoying"
func _on_close_requested() -> void:
	
	# do a dice roll on a treshold to see if it hits or misses
	var treshold = randf_range(0.0, 1.0)
	if treshold < Virus.corruption:
		var ammount : int = (Virus.corruption * (Virus.MAX_POPUP_BRANCHES - 1)) + 1
		
		for i in range(ammount):
			var temp_vec = Virus.generate_random_unit_vector2D()
			var tremp_magnitute = randf_range(CLOSE_DISPOSITION_MAGNITUTE, CLOSE_DISPOSITION_MAGNITUTE / 2.0)
			Virus.create_random_cluter_popup(Vector2(position) + (temp_vec * tremp_magnitute))
		
	
	# NOTE for now always let the close work
	queue_free()
