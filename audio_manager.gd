extends Node

func play_lever() -> void:
	$Lever.play()
	
func play_coin() -> void:
	$Coin.play()
	#AudioStreamRandomizer
	#randomize()
	#pitch_scale = randf_range(0.9, 1.1)
