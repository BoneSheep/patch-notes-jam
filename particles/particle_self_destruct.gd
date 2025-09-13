extends GPUParticles2D

var timer = lifetime

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	one_shot = true
	emitting = true
	
func _process(delta: float) -> void:
	timer -= delta
	if timer <= 0:
		queue_free()
	
