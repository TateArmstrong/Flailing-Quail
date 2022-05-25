extends KinematicBody2D

const GRAVITY: int = 30
const JUMP: = 1000
const MAX_SPEED: = 500

var velocity: = Vector2.ZERO

func _ready() -> void:
	set_rotation_degrees(0)

func _process(delta: float) -> void:
	rotation_degrees += 1
	
	if (Input.is_action_just_pressed("up")):
		set_rotation_degrees(-30)
	
	if (rotation_degrees > 90):
		set_rotation_degrees(90)

func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY
	velocity.x = 0
	
	if velocity.y > MAX_SPEED:
		velocity.y = 800
	if velocity.y < -MAX_SPEED:
		velocity.y = -MAX_SPEED
	
	if (Input.is_action_just_pressed("up")):
		velocity.y -= JUMP
	
	velocity = move_and_slide(velocity)
