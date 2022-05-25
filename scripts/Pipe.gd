extends KinematicBody2D

var velocity: = Vector2(-200, 0)

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	if(position.x < -50):
		queue_free()

func _physics_process(delta: float) -> void:
	move_and_slide(velocity)
