extends Node3D

var time := 0.0

func _process(delta):
	
	rotate_z(10 * delta) # Rotation

	time += delta
