extends TextureButton

@onready var minigame_world = get_node("/root/World")
@onready var pizza_toppings = minigame_world.get_node("PizzaGroup/PizzaToppings")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _pressed():
	for topping in pizza_toppings.get_children():
		topping.delete_topping()
