extends Node3D

@onready var collision_shape_3d: CollisionShape3D = $Area3D/CollisionShape3D
@onready var animation_player: AnimationPlayer = $Area3D/AnimationPlayer
@onready var animation_tree: AnimationTree = $Area3D/AnimationTree
@onready var sfx_falling_platform: AudioStreamPlayer3D = $SFX_FallingPlatform
@onready var sfx_land_fp: AudioStreamPlayer3D = $SFX_FallingPlatform/SFX_LandFP


func _ready() -> void:
	pass
	#$Area3D/AnimationPlayer.play("Static")


func _on_area_3d_body_entered(body: Node3D):
	
	if body.has_method("collect_coin"):
		$SFX_FallingPlatform/SFX_LandFP.play()
		await get_tree().create_timer(0.5).timeout
		print("Bloooob")
		$Area3D/AnimationPlayer.play("Falling")
		$SFX_FallingPlatform.play()
		#animation_tree.travel("Falling")
	
#func back_to_static():
	#animation_tree.travel("Static")
