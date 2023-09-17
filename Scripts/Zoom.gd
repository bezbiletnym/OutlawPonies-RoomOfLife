extends ColorRect

signal clicked
var currentSlide = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("mouse_left"):
		clicked.emit()

func show_zoom():
	self.visible = true
	await clicked
	hide_zoom()

func hide_zoom():
	self.visible = false
