extends Area2D
class_name Scene2Trigger 


func _on_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	pass 
