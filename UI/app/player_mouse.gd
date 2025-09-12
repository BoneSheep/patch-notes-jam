extends Node2D

@onready var click_particle = preload("res://particles/click_particle.tscn")



func _process(_delta: float) -> void:
	global_position = get_global_mouse_position()


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("click"):
		%ClickPressed.play()
		spawn_click_particle()
	elif Input.is_action_just_released("click"):
		%ClickReleased.play()


func spawn_click_particle() -> void:
	var particle = click_particle.instantiate()
	get_tree().current_scene.call_deferred("add_child",particle)
	particle.global_position = global_position
