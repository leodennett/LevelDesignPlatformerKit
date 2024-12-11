extends Area3D
@onready var sfx_coin: AudioStreamPlayer3D = $SFX_Coin

var time := 0.0
var grabbed := false

# Collecting coins

func _on_body_entered(body):
	if body.has_method("collect_coin") and !grabbed:
		
		body.collect_coin()
		
		$SFX_Coin.play()
		#AudioController.play_coin() # Play sound
		
		$Mesh.queue_free() # Make invisible
		$Particles.emitting = false # Stop emitting stars
		
		grabbed = true

# Rotating, animating up and down

func _process(delta):
	
	rotate_y(2 * delta) # Rotation
	#position.y += (cos(time * 5) * 0.5) * delta # Sine movement was 5 and 1
	
	time += delta
