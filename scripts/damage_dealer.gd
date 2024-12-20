extends Area3D
@export var only_push : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: Node) -> void:
	var dir_vector = body.global_position - global_position
	body.velocity = dir_vector.normalized()*25
	if not only_push:
		if body.has_method("touched_spike"):
			body.touched_spike()
		await get_tree().create_timer(0.50).timeout
		if body.has_method("player_died"):
			body.player_died()
