extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.collect_coin()
		$AudioStreamPlayer.play()
		visible = false

func _on_audio_stream_player_finished() -> void:
	queue_free()
