extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while true:
		var tween = get_tree().create_tween()
		constant_linear_velocity.x = 50
		tween.tween_property(get_node("/root/Node2D/StaticBody2D2"), "position", Vector2(550, 0), 1)
		await get_tree().create_timer(1).timeout
		tween.stop()
		var tween2 = get_tree().create_tween()
		constant_linear_velocity.x = -50
		tween2.tween_property(get_node("/root/Node2D/StaticBody2D2"), "position", Vector2(300, 0), 1)
		await get_tree().create_timer(1).timeout
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
