extends KinematicBody2D

const GRAVITY: int = 30
const JUMP: = 1000
const MAX_SPEED: = 500

var velocity: = Vector2.ZERO


func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY
	
	if velocity.y > MAX_SPEED:
		velocity.y = MAX_SPEED
	if velocity.y < -MAX_SPEED:
		velocity.y = -MAX_SPEED
	
	if (Input.is_action_just_pressed("up")):
		velocity.y -= JUMP
	
	velocity = move_and_slide(velocity)
