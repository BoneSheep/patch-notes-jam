extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var sprite = $AnimatedSprite2D

func _physics_process(delta):
	if Input.is_action_just_pressed("jump") and is_on_floor():
		$JumpSound.play()
		velocity.y = JUMP_VELOCITY
		
	var direction = Input.get_axis("move_left", "move_right")
	
	if direction != 0:
		velocity.x = direction * SPEED
		
		# Flip sprite based on direction
		if direction > 0:
			sprite.flip_h = false
		elif direction < 0:
			sprite.flip_h = true
		
		sprite.play("run")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		sprite.play("idle")
	
	# Add gravity
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite.play("jump")
	
	move_and_slide()
	
func collect_coin():
	pass
