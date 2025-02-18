extends Area2D

@export var done: TextureRect
var SECOND_LEVEL = load("res://scenes/SecondLevel.tscn")
var MAIN_LEVEL = load("res://scenes/MainLevel.tscn")

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.is_in_group("ship")):
		print("Reached objective!")
		if done:
			done.visible = true

func _on_body_entered(body: Node2D) -> void:
	#if (body.is_in_group("ship")):
	print("Fall!")
	get_tree().reload_current_scene()

func _on_button_pressed() -> void:
	print("Loading next level...")
	# Get the name of the currently active scene
	var current_scene = get_tree().current_scene.scene_file_path

	# Decide which scene to load next
	if current_scene == "res://scenes/MainLevel.tscn":
		get_tree().change_scene_to_packed(SECOND_LEVEL)  # Load SecondLevel
	else:
		get_tree().change_scene_to_packed(MAIN_LEVEL)  # Go back to MainLevel
