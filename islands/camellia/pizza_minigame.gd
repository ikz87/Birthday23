extends Node2D

enum {
	PEPPERONI,
	ONIONS,
	OLIVES,
	MUSHROOMS,
	PINEAPPLE,
	BACON
}

var toppings_dict = { 
	PEPPERONI: 0,
	ONIONS: 0,
	OLIVES: 0,
	MUSHROOMS: 0,
	PINEAPPLE: 0,
	BACON: 0
}

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_CANVAS_ITEMS
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
