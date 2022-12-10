extends Node

var score = 0
var time = 30
var lives = 3

		
func update_score(s):
	score += s
	var HUD = get_node_or_null("/root/Game/UI/HUD")
	if HUD != null:
		HUD.update_score()

func update_lives():
	lives -= 1
	print("-1 life")
	if lives < 0:
		var _scene = get_tree().change_scene("res://UI/End_game.tscn")
	
	else:
		var HUD = get_node_or_null("/root/Game/UI/HUD")
		if HUD != null:
			HUD.update_lives()
		
func reset():
	score = 0
	time = 30
	lives = 3
