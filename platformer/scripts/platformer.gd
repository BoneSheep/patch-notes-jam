extends Node2D


func _on_void_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("Game Over")
