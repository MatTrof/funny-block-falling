extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while true:
		var tween = get_tree().create_tween()
		tween.tween_property(get_node("/root/Node2D/StaticBody2D5"), "rotation", -180, 180)
		await get_tree().create_timer(180).timeout


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
