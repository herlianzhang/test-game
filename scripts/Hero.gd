extends KinematicBody

const SPEED = 20
var playerName = "player" 
var velocity = Vector3(0, 0, 0)

func _ready():
	print("hello %s, you are my %s word" %[playerName, "test"])
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right") and Input.is_action_just_pressed("ui_left"):
		velocity.x = 0
	elif Input.is_action_just_pressed("ui_right"):
		velocity.x = SPEED
	elif Input.is_action_just_pressed("ui_left"):
		velocity.x = -SPEED
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)
		
	if Input.is_action_just_pressed("ui_up") and Input.is_action_just_pressed("ui_down"):
		velocity.z = 0
	elif Input.is_action_just_pressed("ui_up"):
		velocity.z = -SPEED
	elif Input.is_action_just_pressed("ui_down"):
		velocity.z = SPEED
	else:
		velocity.z = lerp(velocity.z, 0, 0.1)
		
	move_and_slide(velocity)
