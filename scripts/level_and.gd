extends Area2D
#essa variavel agiliza na escolha da cena que deseja mudar
@export var next_level = ""


func _on_body_entered(_body: Node2D) -> void:
	call_deferred("load_next_scene")
#funcao para mudar de cena
func load_next_scene():
	get_tree().change_scene_to_file("res://scene/" + next_level + ".tscn")
