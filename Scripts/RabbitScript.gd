extends ColorRect

var answer:Array[String] = ["Cat", "Monkey", "Goat", "Tiger"]
var curAnswer:Array[String]
var counter: int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func add_to_answer(animal: String):
	curAnswer.append(animal)
	if curAnswer.size() >= 4:
		if (curAnswer[curAnswer.size() - 4] == "Cat") && (curAnswer[curAnswer.size() - 3] == "Monkey") && (curAnswer[curAnswer.size() - 2] == "Goat") && (curAnswer[curAnswer.size() - 1] == "Tiger"):
			print_debug("You passed")

