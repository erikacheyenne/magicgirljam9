extends Control




func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/level_01.tscn")





func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://scenes/credits_scene.tscn")
