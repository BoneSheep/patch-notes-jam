extends Window

@onready var viewport: SubViewport = $SubViewportContainer/SubViewport
const CHEF_MAN_CAP_SVGREPO_COM = preload("res://svgs/chef-man-cap-svgrepo-com.svg")

# Add content to viewport (example: a sprite)
func _ready() -> void:
	close_requested.connect(func(): queue_free())
	
	var sprite := Sprite2D.new()
	sprite.texture = CHEF_MAN_CAP_SVGREPO_COM
	sprite.position = viewport.size / 2
	viewport.add_child(sprite)
