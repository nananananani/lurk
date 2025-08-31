extends CharacterBody2D

var speed = 300.0

func _physics_process(delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	).normalized()

	if input_direction != Vector2.ZERO:
		velocity = input_direction * speed
	else:
		velocity = Vector2.ZERO

	move_and_slide()
