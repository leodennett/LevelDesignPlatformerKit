extends Node3D
@export var rotating : bool
@onready var sfx_saw_rotate: AudioStreamPlayer3D = $SFX_SawRotate


var time := 0.0

func _ready() -> void:
	pass
	#$SFX_SawRotate.play()


func _process(delta):
	
	rotate_x(9 * delta) # Rotation

	time += delta
