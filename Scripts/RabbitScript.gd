extends ColorRect

var answer:Array[String] = ["Cat", "Monkey", "Goat", "Tiger"]
var curAnswer:Array[String]
@onready var pig = $Quest/Pig/Pig
@onready var tiger = $Quest/Tiger/Tiger
@onready var croco = $Quest/Crocodile/Crocodile
@onready var monkey = $Quest/Monkey/Monkey
@onready var elephant = $Quest/Elephant/Elephant
@onready var parrot = $Quest/Parrot/Parrot
@onready var snake = $Quest/Snake/Snake
@onready var cat = $Quest/Cat/Cat
@onready var goat = $Quest/Goat/Goat
@onready var table = $Quest
@onready var sceneManager = $SceneTransition
var counter: int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	table.scale = Vector2(1.0, 1.0)
	pig.pressed.connect(_on_pressed_pig)
	tiger.pressed.connect(_on_pressed_tiger)
	croco.pressed.connect(_on_pressed_croco)
	monkey.pressed.connect(_on_pressed_monkey)
	elephant.pressed.connect(_on_pressed_elephant)
	snake.pressed.connect(_on_pressed_snake)
	cat.pressed.connect(_on_pressed_cat)
	goat.pressed.connect(_on_pressed_goat)

func add_to_answer(animal: String):
	curAnswer.append(animal)
	if curAnswer.size() >= 4:
		if (curAnswer[curAnswer.size() - 4] == "Cat") && (curAnswer[curAnswer.size() - 3] == "Monkey") && (curAnswer[curAnswer.size() - 2] == "Goat") && (curAnswer[curAnswer.size() - 1] == "Tiger"):
			print_debug("You passed")
			sceneManager.transition_to()

func _on_pressed_pig():
	print_debug("Pig")
	add_to_answer("Pig")
func _on_pressed_tiger():
	print_debug("Tiger")
	add_to_answer("Tiger")
func _on_pressed_croco():
	print_debug("Crocodile")
	add_to_answer("Crocodile")
func _on_pressed_monkey():
	print_debug("Monkey")
	add_to_answer("Monkey")
func _on_pressed_elephant():
	print_debug("Elephant")
	add_to_answer("Elephant")
func _on_pressed_parrot():
	print_debug("Parrot")
	add_to_answer("Parrot")
func _on_pressed_snake():
	print_debug("Snake")
	add_to_answer("Snake")
func _on_pressed_cat():
	print_debug("Cat")
	add_to_answer("Cat")
func _on_pressed_goat():
	print_debug("Goat")
	add_to_answer("Goat")
	

