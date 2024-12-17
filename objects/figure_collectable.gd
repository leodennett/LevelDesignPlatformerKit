extends Area3D

@onready var sfx_collectable: AudioStreamPlayer3D = $SFX_Collectable
@onready var sfx_boop: AudioStreamPlayer3D = $sfx_boop
@onready var mesh: Node3D = $Mesh


var time := 0.0
var grabbed := false

# Collecting Figurine


#func _on_body_entered(body: Node3D) -> void:
#func _on_area_entered(area: Area3D) -> void:

func _on_body_entered(body: Node3D) -> void:
	
	
	if body.is_in_group('Player') and !grabbed:
	#if body.has_method("collect_coin"): #
		
		
		$SFX_Collectable.play()
		
		print("statue collected")
		body.collect_figurine()
		
		# Play sound
		
		$Mesh.queue_free() # Make invisible#queue_free() # Make invisible
		#$Particles.emitting = false # Stop emitting stars
		
		grabbed = true



# Rotating, animating up and down

func _process(delta):
	
	rotate_y(0.7 * delta) # Rotation
	position.y += (cos(time * 8) * 0.5) * delta # Sine movement was 5 and 1
	
	time += delta
	
	
