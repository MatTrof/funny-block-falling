extends StaticBody2D

var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(10).timeout
	scale = Vector2(0, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	constant_linear_velocity.x = rng.randi_range(500, 2500)
	await get_tree().create_timer(rng.randf_range(0.1, 2.5)).timeout
	constant_linear_velocity.x = rng.randi_range(-500, -2500)
	await get_tree().create_timer(rng.randf_range(0.1, 2.5)).timeout
