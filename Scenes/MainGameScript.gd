extends Node2D

onready var current_state = GLOBALS.State.LOSING
const goal_score = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("FlowersPlantedText").text = str(GLOBALS.SCORE)
	
	if GLOBALS.SCORE == goal_score:
		current_state = GLOBALS.State.WINNING
