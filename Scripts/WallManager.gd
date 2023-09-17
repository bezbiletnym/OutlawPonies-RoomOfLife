extends Control

@onready var walls: Array[Node] = [$Wall1, $Wall2, $Wall3, $Wall4]
@export var currentWall: int
# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug("Current wall is ", currentWall)
	check_visibility()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _turnToWall(direction):
	currentWall += direction
	if currentWall > 4:
		currentWall = 1
	if currentWall < 1:
		currentWall = 4
	print_debug("Current wall is ", currentWall)
	check_visibility()


func check_visibility():
	for wall in walls:
		if wall == walls[currentWall - 1]:
			wall.visible = true
		else:
			wall.visible = false
			
func _on_left_arrow_pressed():
	_turnToWall(-1)

func _on_right_arrow_pressed():
	_turnToWall(1)
