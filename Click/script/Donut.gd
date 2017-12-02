extends Node2D

const TWO_PI = 2 * PI
const UV = Vector2Array([Vector2(0, 0), Vector2(1, 0), Vector2(1, 1), Vector2(0, 1)])

export(int) var vertex_count = 32
export(float) var outer_radius = 1
export(float) var inner_radius = 0.5
export(Color) var color = Color(1, 1, 1, 1)

var outer_vertices
var inner_vertices
var colors


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	outer_vertices = calculate_circle_vertices(vertex_count, outer_radius)
	inner_vertices = calculate_circle_vertices(vertex_count, inner_radius)
	set_color(color)
	pass


func _draw():
	assert(inner_vertices.size() == vertex_count)
	assert(outer_vertices.size() == vertex_count)
	for i in range(vertex_count):
		var j = (i + 1) % vertex_count
		self.draw_primitive(Vector2Array([outer_vertices[i], outer_vertices[j], inner_vertices[j], inner_vertices[i]]), colors, UV)
	pass


func set_color(color):
	self.color = color
	colors = ColorArray([color, color, color, color])
	return color


func calculate_circle_vertices(n, r):
	var arr = Vector2Array()
	for i in range(n):
		var k = float(i) / n
		var v = Vector2(cos(k * TWO_PI) * r, sin(k * TWO_PI) * r)
		arr.append(v)
	return arr