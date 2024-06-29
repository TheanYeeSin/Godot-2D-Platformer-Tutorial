extends Node

@onready var pause_panel = %PausePanel

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var esc_pressed = Input.is_action_just_pressed("pause")
	if esc_pressed == true:
		get_tree().paused = true
		pause_panel.show()


func _on_resume_pressed():
	pause_panel.hide()
	get_tree().paused = false


func _on_go_to_main_menu_pressed():
	print("Main menu returned")
