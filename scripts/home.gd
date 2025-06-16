extends Node2D

const MOVEAROUNDSCENEFILE: String = "res://scenes/move_around_scene.tscn"

#When the button is pressed, change scene
func _on_move_scene_button_button_down() -> void:
	#Because we don't have to do anything, this is simple
	get_tree().change_scene_to_file(MOVEAROUNDSCENEFILE)
	
	#However, if there is important data to transfer, we can transfer that around
	#using the following code
	#Get the node of the scene
	#var move_around_scene: Node = preload(MOVEAROUNDSCENEFILE).instantiate()
	#move_around_scene.send_data(...) #The stuff to send
	#var next_scene: PackedScene = PackedScene.new()
	#next_scene.pack(move_around_scene)
	#get_tree().change_scene_to_packed(next_scene)
