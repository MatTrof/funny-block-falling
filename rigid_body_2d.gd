extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		linear_velocity.x += (direction / 5) * 300
		angular_velocity += (direction / 10)
	var direction2 := Input.get_axis("ui_up", "ui_down")
	if direction2:
		linear_velocity.y += (direction2/ 5) * 300
