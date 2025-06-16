extends CharacterBody2D

const SPEED = 50.0
const JUMP_VELOCITY = -300.0

@onready var animation = $AnimatedSprite2D

func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx := Input.get_axis("move_left", "move_right")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var directiony := Input.get_axis("move_up", "move_down")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	#Determine the animation
	#Right
	if directionx < 0:
		animation.flip_h = false
		animation.play("walking")
	elif directionx > 0:
		animation.flip_h = true
		animation.play("walking")
	elif directiony != 0:
		animation.play("walking")
	else:
		animation.play("idle")
		#Note, the animation direction does not change.
	move_and_slide()
