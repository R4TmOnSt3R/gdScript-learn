extends Node

var health = 100
var script_variable = 100

var damanges: int = 15 #static type
#or
@export var damage:= 15 # this will automatically detect the datatype #invert typing

const GRAVITY = -9.81 

#enums
enum Alignment { ALLY, NEUTRAL, ENEMY }

#var unit_alighnment = Alignment.ALLY
@export var my_alignment: Alignment


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
	#var vec2 =  Vector2(0.0, 0.0)
	#var vec3 =  Vector3(0.0, 0.0, 0.0)
	#
	#var position = Vector3(3, -10, 5)
	#position.x += 2
	#
	##print(position)
	#
	#print(damage)
	
	add(3, 2)
	var result = add(244, 2)
	result = add(result, 2)
	print(result)
	
	
	###random number 
	var roll = randf()
	if roll  <= 0.8:
		print("You found a COMMON item.")
	else:
		print("You got 60+++ GEM!")

	
	var character_height = randi_range(140, 210)
	print("Your character is " + str(character_height) + "cm tall.")
	
	
	### ARRAY
	
	var items = ["Position", 1, 12.2]
	var itemlist:Array[String] = ["Position", "Analog", "Digital"]
	
	#print(itemlist[1])
	#
	##adding 
	#items[1] = "Ratul"
	#
	##removing elements
	#items.remove_at(3)
	#items.append("Overpowered sword")
	#
	# Loop
	#for item in itemlist:
		##print(item)
		#if item.length() > 6:
			#print(item)
	#
	### loop for running certain amount of times
	##for n in 8:
		##print(n)
		#
	#var glass := 0.0
	#
	#while glass < 0.5:
		#glass += randf_range(0.01, 0.2)
		#if glass > 0.2:
			#break
		#print(glass)
		
	print("The glass is now half full!")
	
	var players = {
		"ratul": {"Level": 6, "Health": 100},
		"villain": {"Level": 3, "Health": 12},
		"Boss": {"Level": 8, "Health": 28}
		}
		
	for username in players:
		print(username + ": " + str(players[username]))
	
	print(players["villain"])
	players["villain"] = 50
	players["Dwayne"] = 999
	
	print(players["ratul"]["Level"])
	
	##Enums
	#if unit_alignment == Alignment.ENEMY:
		#print("You are not welcome here.")
	#else:
		#print("Welcome.")
	
	match my_alignment:
		Alignment.ALLY:
			print("Hello, FRIEND!")
		Alignment.NEUTRAL:
			print("I come in peace!")
		Alignment.ENEMY:
			print("Taste my Wrath!")
		_:
			print("WHO ARE THOUGGGGHHHHH!!")
			
			
		
	
		
		
	

#### This is basically for Input and showing the change while pressing spacebar
func _input(event: InputEvent) -> void:
	#if event.is_action_pressed("hit_color"):
		#$Label.modulate = Color.DARK_GREEN
	#if event.is_action_released("hit_color"):
		#$Label.modulate = Color.GREEN
		#
	#if event.is_action_pressed("hit_color"):
		#health -= 20
		#print(health)
		#
		#if health <= 0:
			#health = 0
			#print("Sorry You died! ")
		#elif health < 50:
			#print("Taking damage...")
		#else:
			#print("You surviving!")
	
	if event.is_action_pressed("hit_color"):
		jump()
	
	
	
func jump():
	print("JUMP")
	


func add(num1: int, num2: int) -> int:
	var result = num1 + num2 
	#print(result)
	return result













	
	
