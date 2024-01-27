extends CharacterBody2D


@export var speed = 200

var input_movement = Vector2.ZERO

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite = $AnimatedSprite2D

	
var active = true

func move():
	input_movement = Input.get_vector("move_left","move_right","move_up","move_down")
	print(input_movement)
	print(get_slide_collision_count())
	if input_movement != Vector2.ZERO:
		velocity = input_movement * speed
	if input_movement == Vector2.ZERO:
		velocity = Vector2.ZERO
	move_and_slide()
	if input_movement.x > 0:
		animated_sprite.play("right_run")
	if input_movement.x < 0:
		animated_sprite.play("left_run")
	if input_movement.x == 0:
		animated_sprite.play("idle")
	if input_movement.y > 0:
		animated_sprite.play("walk_down")
	if input_movement.y < 0:
		animated_sprite.play("walk_up")
func _physics_process(delta):
	move()
	
