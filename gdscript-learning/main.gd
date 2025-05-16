extends Node

var health = 100
var script_variable = 100

var damanges: int = 15 #static type
#or
@export var damage:= 15 # this will automatically detect the datatype #invert typing

const GRAVITY = -9.81


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print("Hello, world!")
	### This is basically for showing it in a windows bar like launching game
	$Label.text = "Hello, Sneha!"
	$Label.modulate = Color.GREEN
	
	#health = 40
	#health = 20 + 30
	#health += 20
	#health -= 10
	#health *= 4
	#health /= 2
	#print(health)
	#bool int float string
	#we can cast float to int by just set in int(pi)
	## common datastructures used in godot is vector2 & 3
	var vec2 =  Vector2(0.0, 0.0)
	var vec3 =  Vector3(0.0, 0.0, 0.0)
	
	var position = Vector3(3, -10, 5)
	position.x += 2
	
	#print(position)
	
	
	
	
	

#func _input(event):
	#

#### This is basically for Input and showing the change while pressing spacebar
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("hit_color"):
		$Label.modulate = Color.DARK_GREEN
	if event.is_action_released("hit_color"):
		$Label.modulate = Color.GREEN
		
	if event.is_action_pressed("hit_color"):
		health -= 20
		print(health)
		
		if health <= 0:
			health = 0
			print("Sorry You died! ")
		elif health < 50:
			print("Taking damage...")
		else:
			print("You surviving!")
	
	
	
