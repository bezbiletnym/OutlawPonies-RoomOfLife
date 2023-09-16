extends TextureButton

@export var anim_player: AnimationPlayer
@export var isGoal: bool
@onready var sceneManager = get_node("%SceneTransition")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	anim_player.play("hover")


func _on_mouse_exited():
	anim_player.play_backwards("hover")


func _on_pressed():
	if isGoal == true:
		sceneManager.transition_to()
