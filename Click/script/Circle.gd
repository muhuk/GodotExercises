extends Polygon2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

const VERTEXT_COUNT = 32

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var polygon = Vector2Array([Vector2(0, 0), Vector2(10, 0), Vector2(10, 10), Vector2(0, 10)])
	self.set_polygon(polygon)
	self.set_pos(Vector2(10, 10))
	pass
