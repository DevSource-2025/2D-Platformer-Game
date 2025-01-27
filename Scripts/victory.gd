extends Area2D

@onready var timer: Timer = $Timer
@onready var label: Label = %Label2

func _on_body_entered(body: Node2D) -> void:
	label.text = "You Won"
	timer.start()


func _on_timer_timeout() -> void:
	label.text = ""
	get_tree().reload_current_scene()
