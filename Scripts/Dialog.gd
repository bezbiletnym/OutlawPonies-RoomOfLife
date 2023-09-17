extends ColorRect

@onready var nameLabel = $Frame/NameLabel
@onready var textLabel = $Frame/TextLabel
@export var speakerName: String
@export var dialogText: Array[String]
signal clicked
var currentSlide = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	currentSlide = 0


func _input(event):
	if event.is_action_pressed("mouse_left"):
		clicked.emit()

func show_dialog():
	nameLabel.text = speakerName
	textLabel.text = dialogText[currentSlide]
	print_debug("curSlide: ", currentSlide)
	self.visible = true
	await clicked
	currentSlide += 1
	if currentSlide < dialogText.size():
		await show_dialog()
	else:
		hide_dialog()

func hide_dialog():
	self.visible = false
