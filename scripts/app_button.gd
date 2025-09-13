extends Button

@export var app_title := "Game"
@export var WINDOW = preload("res://UI/gameClient/game_window.tscn")

func _pressed():
	var win := WINDOW.instantiate()
	win.title = app_title
	# win.size = Vector2i(300, 200)
	win.position = Vector2i(200, 100)
	get_tree().root.get_node("Desktop/WindowLayer").add_child(win)
