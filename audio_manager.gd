extends Node

func _ready():
	print("test")
	#play_music()

#func play_music() -> void:
	#$BGM2.play()

func play_lever() -> void:
	$Lever.play()
	
func play_coin() -> void:
	$Coin.play()
	#AudioStreamRandomizer
	#randomize()
	#pitch_scale = randf_range(0.9, 1.1)
