extends Node2D

enum Function_State {ENABLED, DISABLED}
var curr_funct_state

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("menu_start") && curr_funct_state == Function_State.ENABLED:
			changeSceneToNext()
		

func changeSceneToNext():
	get_tree().change_scene("res://Scenes/MainGame.tscn")



func _on_Timer_timeout():
	curr_funct_state = Function_State.ENABLED
