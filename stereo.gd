extends AudioStreamPlayer

func _on_area_body_entered(body):
	if body is CharacterBody2D:
		queue_free()
		print("yes")
	
