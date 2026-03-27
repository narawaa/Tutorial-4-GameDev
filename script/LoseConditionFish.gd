extends Area2D

@export var sceneName = "LoseScreen"

func _on_Area_Trigger_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/" + sceneName + ".tscn")
