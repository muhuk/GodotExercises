extends Polygon2D

const TWO_PI = 2 * PI

export(int) var vertex_count = 32
export(float) var radius = 10


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	self.set_polygon(calculate_circle_vertices(vertex_count, radius))
	pass


func calculate_circle_vertices(n, r):
	var arr = Vector2Array()
	for i in range(n):
		var k = float(i) / n
		var v = Vector2(cos(k * TWO_PI) * r, sin(k * TWO_PI) * r)
		arr.append(v)
	return arr