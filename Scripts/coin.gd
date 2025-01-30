extends Area2D
@onready var timer: Timer = $Timer
@onready var game_manager: Node = %game_manager
@onready var coin: Area2D = $"."
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var collider: CollisionShape2D = $CollisionShape2D
@onready var pickup: AudioStreamPlayer2D = $Pickup

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	print("+1 coin !")
	
	game_manager.add()
	pickup.play()
	coin.visible = false
	collider.set_deferred("disabled", true)
	timer.start()
	
