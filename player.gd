extends VehicleComponent

func get_input():
	print(Input.get_axis("down", "up"))
	match (Input.get_axis("down", "up")):
		1.0:
			accelerate();
		-1.0:
			decelerate();
	
	turn(Input.get_axis("left", "right"))

func _physics_process(delta):
	get_input()
	super._physics_process(delta)
