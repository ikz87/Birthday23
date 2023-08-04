extends Area2D

enum Toppings {
	PEPPERONI,
	ONIONS,
	OLIVES,
	MUSHROOMS,
	PINEAPPLE,
	BACON
}

@export var topping_type : Toppings
#var local_path = "res://islands/camellia/"
var topping = preload("res://islands/camellia/topping.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("input_event", self._on_area_2d_input_event)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_area_2d_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("click"):
		var topping_node = topping.instantiate()
		topping_node.topping_type = topping_type
		match topping_type:
			Toppings.PEPPERONI:
				topping_node.texture = ResourceLoader.load("res://islands/camellia/2d_assets/topping_pepperoni.png")
			Toppings.ONIONS:
				topping_node.texture = ResourceLoader.load("res://islands/camellia/2d_assets/topping_onions.png")
			Toppings.OLIVES:
				topping_node.texture = ResourceLoader.load("res://islands/camellia/2d_assets/topping_olives.png")
			Toppings.MUSHROOMS:
				topping_node.texture = ResourceLoader.load("res://islands/camellia/2d_assets/topping_mushrooms.png")
			Toppings.PINEAPPLE:
				topping_node.texture = ResourceLoader.load("res://islands/camellia/2d_assets/topping_pineapple.png")
			Toppings.BACON:
				topping_node.texture = ResourceLoader.load("res://islands/camellia/2d_assets/topping_bacon.png")
		add_child(topping_node)

