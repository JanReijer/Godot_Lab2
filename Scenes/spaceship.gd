extends Sprite2D

@export var movement_speed: float = 200.00

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	if Input.is_action_just_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_just_pressed("move_down"):
		direction.y += 1
	if Input.is_action_just_pressed("move_right"):
		direction.x += 1
	if Input.is_action_just_pressed("move_left"):
		direction.x -= 1
	
	if direction == Vector2.ZERO:
		return
	else:
		position += direction.normalized() * movement_speed * delta
