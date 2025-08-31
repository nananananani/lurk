extends CharacterBody2D
var speed = 300.0

func _physics_process(delta):
	var direction = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	velocity = direction * speed
	move_and_slide()
