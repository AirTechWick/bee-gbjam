extends Area2D

onready var _animation = $AnimationPlayer
onready var MAINGAME = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	_animation.play("Web")


func _on_SpiderWeb_body_entered(body):
	if MAINGAME.current_state == GLOBALS.State.LOSING:
		get_tree().change_scene("res://Scenes/GameOverScreen.tscn")
	elif MAINGAME.current_state == GLOBALS.State.WINNING:
		get_tree().change_scene("res://Scenes/GameWinScreen.tscn")
