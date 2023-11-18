extends CharacterBody2D
signal rotate
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")*2.5
var can_jump: bool = true
var jump_speed = 1000
func _ready():
	pass
func _process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		rotate.emit()
	$".".position.x+=700*delta
	print(jump_speed)
	if is_on_floor() and Input.is_action_pressed("up"):
		velocity.y = -jump_speed
	move_and_slide()
func _on_area_body_entered(body):
	if body is CharacterBody2D:
		queue_free()
func _on_area_2d_body_entered(body):
	if body is CharacterBody2D:
		queue_free()
func _on_rotate():
	if not is_on_floor():
		rotation_degrees+=1
	pass # Replace with function body.
