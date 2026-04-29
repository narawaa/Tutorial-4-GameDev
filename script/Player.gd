extends CharacterBody2D

const ACCELERATION = 400.0
const DECELERATION = 400.0

@onready var particle = $GPUParticles2D

@export var speed: float = 400.0
@export var gravity: int = 1200
@export var jump_speed: int = -480
@export var max_jumps: int = 2

var jump_count = 0

func get_input():
	velocity.x = 0
	if Input.is_action_just_pressed("jump") and jump_count < max_jumps:
		velocity.y = jump_speed
		jump_count += 1
	if Input.is_action_pressed("right"):
		velocity.x = lerp(velocity.x, speed, ACCELERATION / speed)  ## naik perlahan (kanan)
	elif Input.is_action_pressed("left"):
		velocity.x = lerp(velocity.x, -speed, ACCELERATION / speed)  ## naik perlahan (kiri)
	else:
		velocity.x = lerp(velocity.x, 0.0, DECELERATION / speed)  ## turun perlahan


func _physics_process(delta):
	velocity.y += delta * gravity
	get_input()
	set_particles()
	move_and_slide()
	
	if is_on_floor():
		jump_count = 0


func _process(_delta):
	if not is_on_floor():
		$Animator.play("Jump")
	elif velocity.x != 0:
		$Animator.play("Walk")
	else:
		$Animator.play("Idle")

	if velocity.x != 0:
		if velocity.x > 0:
			$Sprite2D.flip_h = false
		else:
			$Sprite2D.flip_h = true

func set_particles():
	if abs(velocity.x) == speed and is_on_floor():
		particle.set_emitting(true)
	else:
		particle.set_emitting(false)
