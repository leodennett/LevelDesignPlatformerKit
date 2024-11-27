extends Node3D

var time := 0.0
var grabbed := false

# Collecting Figurine

func _on_body_entered(body):
	if body.has_method("collect_figurine") and !grabbed:
		
		body.collect_figurine()
		
		Audio.play("res://sounds/coin.ogg") # Play sound
		
		$Mesh.queue_free() # Make invisible
		$Particles.emitting = false # Stop emitting stars
		
		grabbed = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
