extends Polygon2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

const VERTEXT_COUNT = 32
const TWO_PI = 2 * PI

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	self.set_polygon(calculate_circle_vertices(VERTEXT_COUNT, 50))
	self.set_pos(Vector2(100, 100))
	pass


func calculate_circle_vertices(n, r):
	var arr = Vector2Array()
	for i in range(n):
		var k = float(i) / n
		var v = Vector2(cos(k * TWO_PI) * r, sin(k * TWO_PI) * r)
		arr.append(v)
	print(arr)
	return arr