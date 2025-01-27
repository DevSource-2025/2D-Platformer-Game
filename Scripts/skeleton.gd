extends Node2D

# Movement variables
const SPEED = 40
var direction = 1

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var right: RayCast2D = $right
@onready var left: RayCast2D = $left

func _process(delta):
	# Check for wall collision and reverse direction
	if right.is_colliding():
		direction = -1
		sprite.flip_h = true
	elif left.is_colliding():
		direction = 1
		sprite.flip_h = false

	# Move horizontally
	position.x += direction * SPEED * delta

	# Play animation
	if not sprite.is_playing():
		sprite.play("idle")  # Replace "run" with the name of your animation
