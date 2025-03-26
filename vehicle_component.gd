extends CharacterBody2D
class_name VehicleComponent

@export var speed = 400
@export var rotation_speed = 1.5

var rotation_direction = 0

func accelerate():
	velocity = transform.y * -speed
	
func decelerate():
	velocity = transform.y * speed
	
func turn(direction):
	rotation_direction = direction;
	
func _physics_process(delta):
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
