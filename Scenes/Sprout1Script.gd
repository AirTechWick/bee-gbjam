extends Node2D

export var speed = 1


func _ready():
	self.position.x = 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= speed
	
	# Reset the position and Stop animation
	if self.position.x <= -40:
		$AnimatedSprite.stop()
		self.position.x = 2
