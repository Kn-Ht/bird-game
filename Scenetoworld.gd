extends Node2D


@onready var interaction_area: InteractionArea = $InteractionArea


const lines: Array[String] = [
	"Looks cozy, no birds on the bed allowed though"
	
]



func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	

func _on_interact():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
