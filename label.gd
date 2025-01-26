extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var xpos = get_node("/root/Node2D/RigidBody2D").position.x
	var ypos = get_node("/root/Node2D/RigidBody2D").position.y
	var rot = get_node("/root/Node2D/RigidBody2D").rotation
	text = ("Cube X Position: " + var_to_str(xpos) + "\nCube Y Position: " + var_to_str(ypos) + "\nCube Rotation: " + var_to_str(rot * 115))
