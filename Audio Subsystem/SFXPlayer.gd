extends Node

var soundEffects: Dictionary = {}
var audioStreamPlayers: Dictionary = {}

func _ready():
	# TODO: Initialize AudioStreamPlayer nodes here or dynamically create them when needed
	pass

func play(effect: String) -> void:
	if soundEffects.has(effect):
		var player = audioStreamPlayers[effect]
		player.play()

func stop(effect: String) -> void:
	if soundEffects.has(effect):
		var player = audioStreamPlayers[effect]
		player.stop()

func loadEffects(effects: Dictionary) -> void:
	for effect in effects.keys():
		var stream = effects[effect]
		var player = AudioStreamPlayer.new()
		player.stream = stream
		add_child(player)
		soundEffects[effect] = stream
		audioStreamPlayers[effect] = player
		
		
func set_volume(volume: float) -> void:
	#TODO: Implement this
	pass
	
#Helper function to convert linear volume to decibels
func linear2db(linear):
	#TODO: Implement this
	pass
