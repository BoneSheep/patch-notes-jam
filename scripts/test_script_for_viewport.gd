extends Button

@onready var label: Label = $"../Label"

func _on_pressed() -> void:
	# Convert the label text to int, add 1
	var number = int(label.text) + 1
	# Update the label text
	label.text = str(number)
