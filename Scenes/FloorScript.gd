extends Node2D

onready var _animation_sprout_1 = $"../Sprout1/AnimatedSprite"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Area2D_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	print(str(area) + " entered Floor")
	_animation_sprout_1.play("default")
	GLOBALS.SCORE += 1
	print(GLOBALS.SCORE)

	
