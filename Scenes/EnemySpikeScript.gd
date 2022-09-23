extends Area2D

onready var velocity_x = 0
export var speed = 1



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= velocity_x
	
	# Reset the position and set speed to 0
	if self.position.x <= -50:
		self.position.x = 165
		velocity_x = 0
		


func _on_BranchCooldown_timeout():
	velocity_x = speed


func _on_EnemySpike_body_entered(body):
	print("Game Over")
