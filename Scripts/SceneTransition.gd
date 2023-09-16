extends ColorRect

@export var next_scene: PackedScene
@onready var anim_player = $AnimationPlayer
var transit: bool
# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = true
	transit = true
	anim_player.play_backwards("transition")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func transition_to():
	self.visible = true
	anim_player.play("transition")

func _on_animation_player_animation_finished(anim_name):
	transit = !transit
	self.visible = false
	if transit == true:
		get_tree().change_scene_to_packed(next_scene)
