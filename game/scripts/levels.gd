extends Node2D

var sher_player = preload("res://scenes/player_sher.tscn")
var jo_player  = preload("res://scenes/player_jo.tscn")

var sher_instance = sher_player.instantiate()
var jo_instance = jo_player.instantiate()


@onready var player_space = $PlayerBlank

@onready var character_choice = $CharacterPicker


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
