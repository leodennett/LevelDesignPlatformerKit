extends Node3D

@onready var collision_shape_3d: CollisionShape3D = $Area3D/CollisionShape3D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	$Area3D/AnimationPlayer.play("Static")


func _on_area_3d_body_entered(body: Node3D) -> void:
	$Area3D/AnimationPlayer.play("Falling")
	#animation_tree.travel("Regenerate")
	
#func back_to_static():
	#animation_tree.travel("Static")
