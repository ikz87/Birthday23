extends Sprite2D

@onready var selected = true
@onready var minigame_world = get_node("/root/World")
@onready var pizza_group = minigame_world.get_node("PizzaGroup")
@onready var pizza_area = pizza_group.get_node("PizzaBase/Area2D")
@onready var pizza_toppings = pizza_group.get_node("PizzaToppings")
@onready var animator = $Animator

enum {
	PEPPERONI,
	ONIONS,
	OLIVES,
	MUSHROOMS,
	PINEAPPLE,
	BACON
}

signal topping_placed

var topping_type


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("click") and selected:
		selected = false
		
		# Reparent node and change the pizza_toppings dict
		if pizza_area in $Area2D.get_overlapping_areas():
			animator.play("On_pizza")
			await animator.animation_finished
			reparent(pizza_toppings)
			minigame_world.toppings_dict[topping_type] += 1
			emit_signal("topping_placed")
			print(minigame_world.toppings_dict)
			
		# Delete the node
		else:
			delete_topping()
			
	if selected:
		global_position = get_global_mouse_position()
	pass


func delete_topping():
	animator.play("Outside_pizza")
	await animator.animation_finished
	self.queue_free()
