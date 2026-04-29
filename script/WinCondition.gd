extends Area2D

@export var sceneName: String = "WinScreen"

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "Player":
		call_deferred("_change_scene")

func _change_scene():
	get_tree().change_scene_to_file("res://scenes/" + sceneName + ".tscn")
