extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.has_method("touched_lava"):
		body.touched_lava()
	#AudioController.play_deathlava()
	await get_tree().create_timer(0.5).timeout
	if body.has_method("player_died"):
		body.player_died()
