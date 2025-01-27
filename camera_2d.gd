extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = [get_node("/root/Node2D/White").position.y, get_node("/root/Node2D/Yellow").position.y, get_node("/root/Node2D/Red").position.y,
		get_node("/root/Node2D/Purple").position.y, get_node("/root/Node2D/Green").position.y, get_node("/root/Node2D/Pink").position.y, 
		get_node("/root/Node2D/Cyan").position.y].max()
	
