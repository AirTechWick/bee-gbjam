extends KinematicBody2D


export var gravity = .1
#More Negative means the player will Boost faster
export var velocity_max = -2
#More Positive means the player will Fall faster
export var velocity_min = 1.5
export var velocity_boost = .2
var velocity = Vector2()
const UPWARDS = Vector2(0,-1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	apply_velocity_y()
	self.position.y = clamp(self.position.y, 10,115)

		
func apply_velocity_y():
	#Boosting
	if Input.is_action_pressed("Boost"):
		velocity.y -= velocity_boost
		if velocity.y <= velocity_max:
			velocity.y = velocity_max
	
	#Gravity
	if velocity.y >= velocity_min:
		velocity.y = velocity_min
	else:
		velocity.y += gravity
	move_and_collide(velocity)
