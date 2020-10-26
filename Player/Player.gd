extends KinematicBody2D

export(float) var velocity = 200

onready var luz = $Light2D

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		luz.rotation_degrees = 180
		move_and_slide(Vector2(0, -velocity))
	elif Input.is_action_pressed("ui_down"):
		luz.rotation_degrees = 0
		move_and_slide(Vector2(0, velocity))
	elif Input.is_action_pressed("ui_left"):
		luz.rotation_degrees = 90
		move_and_slide(Vector2(-velocity, 0))
	elif Input.is_action_pressed("ui_right"):
		luz.rotation_degrees = -90
		move_and_slide(Vector2(velocity, 0))
