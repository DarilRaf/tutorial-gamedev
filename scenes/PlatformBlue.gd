extends Node2D

@export var speed = 500.0

var movement_enabled = true

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Platform initialized")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if movement_enabled:
		if Input.is_action_pressed("move_up"):
			move_local_y(-speed * delta, false)
		
		if Input.is_action_pressed("move_down"):
			move_local_y(speed * delta, false)

		if Input.is_action_pressed("move_right"):
			move_local_x(speed * delta, false)

		if Input.is_action_pressed("move_left"):
			move_local_x(-speed * delta, false)


func _on_objective_area_body_entered(body: Node2D) -> void:
	movement_enabled = false
