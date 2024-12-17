extends Node3D

@onready var collision_shape_3d: CollisionShape3D = $Area3D/CollisionShape3D
@onready var animation_player: AnimationPlayer = $Area3D/AnimationPlayer
@onready var animation_tree: AnimationTree = $Area3D/AnimationTree


func _ready() -> void:
	pass
	#$Area3D/AnimationPlayer.play("Static")


func _on_area_3d_body_entered(body: Node3D):
	
	if body.has_method("collect_coin"):
		print("Bloooob")
		$Area3D/AnimationPlayer.play("Falling")
		#animation_tree.travel("Falling")
	
#func back_to_static():
	#animation_tree.travel("Static")
