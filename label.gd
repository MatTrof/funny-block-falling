extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var nodes = [
		get_node("/root/Node2D/White"),
		get_node("/root/Node2D/Yellow"),
		get_node("/root/Node2D/Red"),
		get_node("/root/Node2D/Purple"),
		get_node("/root/Node2D/Green"),
		get_node("/root/Node2D/Pink"),
		get_node("/root/Node2D/Cyan")
	]
	
	var max_y_position = -INF
	var max_node_name = ""
	
	for node in nodes:
		if node.position.y > max_y_position:
			max_y_position = node.position.y
			max_node_name = node.name
	
	text = String(max_node_name + " is in the lead!")
