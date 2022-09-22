extends Control


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("menu_start"):
		get_tree().change_scene("res://Scenes/MainGame.tscn")
