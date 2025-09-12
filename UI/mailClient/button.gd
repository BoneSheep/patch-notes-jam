extends Button

@onready var text_edit: LineEdit = $"../TextEdit"

# TODO
func _on_pressed() -> void:
	text_edit.text = ""
