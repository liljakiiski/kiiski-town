extends Button

@onready var camera = $"../Camera2D"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#Keep our position the same as the camera's
	#Making this node a child of Camera2D doesn't give what I want
	position.x = camera.get_screen_center_position().x
	position.y = camera.get_screen_center_position().y
	print(position.x, position.y)
