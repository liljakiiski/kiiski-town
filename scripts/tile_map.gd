extends TileMap

@onready var player: CharacterBody2D = $"../player"
@onready var player_tile_x: int = 0
@onready var player_tile_y: int = 0

func _process(delta: float) -> void:
	player_tile_x = player.x / rendering_quadrant_size #That would be 64
	player_tile_y = player.y / rendering_quadrant_size
	#Check the tiles around the player to check "Collision"
	for x in range(player_tile_x - 4, player_tile_x + 4):
		for y in range(player_tile_y - 4, player_tile_y + 4):
			pass
