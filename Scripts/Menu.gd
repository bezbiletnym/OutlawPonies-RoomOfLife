extends Node2D

class_name Menu
@onready var sceneManager = $SceneTransition
@onready var audio = $AudioStreamPlayer2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_play_button_pressed():
	sceneManager.transition_to()


func _on_audio_stream_player_2d_finished():
	audio.play()
