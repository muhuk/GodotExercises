extends Node2D


func _ready():
	set_process_unhandled_input(true)
	pass


func _unhandled_input(event):
	# Exit game when ESCAPE is pressed.
	if event.type == InputEvent.KEY and !event.pressed and event.scancode == KEY_ESCAPE:
		self.get_tree().quit()
	pass