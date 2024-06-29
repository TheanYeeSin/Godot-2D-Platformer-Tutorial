extends Node

@onready var score_label = %"Score Label"
@export var hearts: Array[Node]

var points = 0
var lives = 3

func decrease_health():
	lives -= 1
	print(lives)
	
	for i in 3:
		if (i < lives):
			hearts[i].show()
		else:
			hearts[i].hide()
	
	if (lives == 0):
		get_tree().reload_current_scene()

func add_point():
	points += 1
	print(points)
	score_label.text = "Points: " + str(points)


