extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	for each in get_children():
		print(each)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sher_picker_pressed():
	PlayerVariables.is_sherly = true
	add_child(PlayerVariables.sher_instance)
	if get_node_or_null("Player_Jo") != null:
		remove_child(PlayerVariables.jo_instance)
		



func _on_jo_picker_pressed():
	PlayerVariables.is_sherly = false
	add_child(PlayerVariables.jo_instance)
	if get_node_or_null("Player_Sher") != null:
		remove_child(PlayerVariables.sher_instance)
		print("remove")
