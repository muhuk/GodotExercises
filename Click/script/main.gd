extends Node2D


const DONUT = preload("res://Click/scene/Donut.tscn")


func _ready():
	set_process_unhandled_input(true)
	pass


func _unhandled_input(event):
	if event.type == InputEvent.KEY and !event.pressed and event.scancode == KEY_ESCAPE:
		# Exit game when ESCAPE is pressed.
		self.get_tree().quit()
	elif event.type == InputEvent.MOUSE_BUTTON and event.button_index == 1:
		# Left click
		var d = DONUT.instance()
		d.set_scale(Vector2(10, 10))
		d.set_pos(event.pos)
		add_child(d)
	pass