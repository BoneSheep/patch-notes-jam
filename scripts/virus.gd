extends Node

const POPUP_CONTACT = preload("res://UI/popup/popup_contact.tscn")
const POPUP_WARNING = preload("res://UI/popup/popup_warning.tscn")

# when virus disides to spawn a new popup it will randomly select one from this list
const CLUTTER_POPUPS = [POPUP_CONTACT, POPUP_WARNING]

# ref to main game ui node
var desktop

# severity of corrution (has inpact on chance of something annoying happening)
var corruption : float
const MAX_POPUP_BRANCHES : int = 4

func _ready() -> void:
	desktop = get_tree().root.get_node("Desktop")
	
	# difficulty is chosen a bit at random idk if this is good game design 
	# all i know is i like the idea of it becoming one
	randomize()
	corruption = 1#randf_range(0.1, 0.2)

# functions for adding different kinds of popups
# NOTE this code is not DRY yet...

func create_popup_warning(pos: Vector2):
	var popup = POPUP_WARNING.instantiate()
	
	popup.position = pos
	
	desktop.get_node("WindowLayer").add_child(popup)

func create_popup_contact(pos: Vector2):
	var popup = POPUP_CONTACT.instantiate()
	
	popup.position = pos
	
	desktop.get_node("WindowLayer").add_child(popup)

func create_random_cluter_popup(pos: Vector2):
	var popup = CLUTTER_POPUPS.pick_random().instantiate()
	
	popup.position = pos
	
	desktop.get_node("WindowLayer").add_child(popup)

# a small math helper function (usefull for the virus)
func generate_random_unit_vector2D():
	var angle = randf_range(0.0, TAU) # TAU = 2 * PI
	return Vector2.RIGHT.rotated(angle)
