extends Node

var VP = Vector2.ZERO

var score = 0
var time = 30
var lives = 3

func _ready():
	pass




func _physics_process(_delta):
	var SpaceShip_Container = get_node_or_null("/root/Game/SpaceShip_Container")
	if SpaceShip_Container != null:
		if SpaceShip_Container.get_child_count() == 0:
			var _scene = get_tree().change_scene("res://UI/End_game.tscn")


func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		var Pause_menu = get_node_or_null("/root/Game/UI/Pause_menu")
		if Pause_menu == null:
			get_tree().paused = false
		else:
			Pause_menu.show()
			get_tree().paused = true


func reset():
  get_tree().paused = false
  score = 0
  time = 30
  lives = 5
