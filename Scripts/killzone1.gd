extends Area2D

@onready var timer = $Timer

func _on_body_entered(body) -> void:
	timer.start()
	print("You died")
	body.get_node("CollisionShape2D").queue_free()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0	
	get_tree().reload_current_scene()
