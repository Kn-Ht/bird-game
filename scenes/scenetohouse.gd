extends Area2D
class_name SceneTrigger 

func _on_body_entered(_body):
    get_tree().change_scene_to_file("res://scenes/house.tscn")
