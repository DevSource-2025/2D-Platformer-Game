extends Area2D

@onready var timer = $Timer
@onready var sprite: AnimatedSprite2D = $"../AnimatedSprite2D"
@onready var audio: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body) -> void:
	timer.start()
	print("You died")
	sprite.play("attack")
	audio.play()
	body.get_node("CollisionShape2D").queue_free()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0	
	get_tree().reload_current_scene()
