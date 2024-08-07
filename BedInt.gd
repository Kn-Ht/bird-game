extends Node2D


@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $Sprite2D

const lines: Array[String] = [
	"Looks cozy, no birds on the bed allowed though"
	
]



func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	

func _on_interact():
	DialogManager.start_dialog(global_position, lines)
	await DialogManager.dialog_finished
