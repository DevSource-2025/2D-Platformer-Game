extends Node

var coin = 0 
@onready var label: Label = %Label
@onready var timer: Timer = $Timer


	

func add():
	coin += 1
	label.text = "Score: " + str(coin)



	
