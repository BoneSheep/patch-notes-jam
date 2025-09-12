extends Control

const MAIL_WINDOW = preload("res://UI/mailClient/mail_window.tscn")
const GAME_WINDOW = preload("res://UI/gameClient/game_window.tscn")

func _ready():
	var mail = MAIL_WINDOW.instantiate()
	add_child(mail)
