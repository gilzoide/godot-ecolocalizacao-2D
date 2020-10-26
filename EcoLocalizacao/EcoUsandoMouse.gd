extends Node

var ecoScene = preload("res://EcoLocalizacao/EcoLocalizacaoLuz.tscn")

func _input(event):
	if event.is_action_pressed("eco"):
		var eco = ecoScene.instance()
		eco.position = event.position
		add_child(eco)
