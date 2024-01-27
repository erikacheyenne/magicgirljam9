extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sher_picker_pressed():
	PlayerVariables.is_sherly = true



func _on_jo_picker_pressed():
	PlayerVariables.is_sherly = false
