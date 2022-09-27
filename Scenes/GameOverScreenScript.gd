extends Node2D

enum Function_State {ENABLED, DISABLED}
var curr_funct_state

# Called when the node enters the scene tree for the first time.
func _ready():
	curr_funct_state = Function_State.DISABLED
	get_node("FlowersPlantedText").text = str(GLOBALS.SCORE) + " Flowers Planted"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("menu_start") && curr_funct_state == Function_State.ENABLED:
		GLOBALS.SCORE = 0
		get_tree().change_scene("res://Scenes/MainGame.tscn")


func _on_Timer_timeout():
	curr_funct_state = Function_State.ENABLED
