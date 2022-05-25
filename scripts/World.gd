extends Node2D

var pipe

func _ready() -> void:
	pipe = load("res://scenes/Pipe.tscn")

func _on_Timer_timeout() -> void:
	var new_pipe = pipe.instance()
	new_pipe.position.y = (randi() % 171) + 160
	new_pipe.position.x = 1024 + 50
	new_pipe.scale
	add_child(new_pipe)
