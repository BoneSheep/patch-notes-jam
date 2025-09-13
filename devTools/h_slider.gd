extends HSlider

func _ready() -> void:
	value = Virus.corruption

func _on_value_changed(value: float) -> void:
	Virus.corruption = value
