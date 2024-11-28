extends Node3D
@export var rotating : bool


var time := 0.0




func _process(delta):
	
	rotate_z(10 * delta) # Rotation

	time += delta
