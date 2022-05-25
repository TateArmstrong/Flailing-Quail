extends Node2D

var pipe

var ground_array: Array
const GROUND_SPEED: int = 200

func _ready() -> void:
	pipe = load("res://scenes/Pipe.tscn")
	
	# Gets ground scenes
	for i in 3:
		ground_array.append(get_node("Ground" + str(i+1)))
		print(ground_array[i])

func _process(delta: float) -> void:
	for i in ground_array.size():
		var temp = ground_array[i].get_position()
		
		temp.x -= GROUND_SPEED * delta
		
		if temp.x <= -768:
			temp.x += 768 * ground_array.size()
		
		ground_array[i].position = temp

func _on_Timer_timeout() -> void:
	var new_pipe = pipe.instance()
	new_pipe.position.y = (randi() % 171) + 160
	new_pipe.position.x = 1024 + 50
	new_pipe.set_z_index(2)
	add_child(new_pipe)
