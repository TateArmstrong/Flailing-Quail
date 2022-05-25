extends KinematicBody2D

var velocity = Vector2(-200, 0)
const BACK_OF_THE_LINE = Vector2(768 * 2, 504.623)

#func _process(delta: float) -> void:
	#if position.x < -768:
		#set_position(BACK_OF_THE_LINE)

#func _physics_process(delta: float) -> void:
	#move_and_slide(velocity)
