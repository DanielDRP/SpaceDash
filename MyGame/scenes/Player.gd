extends Node2D
var player_speed = 400
var movement = Vector2()

func _ready():
	
	pass

func player_movement(delta):
	movement = Vector2()
	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	if Input.is_action_pressed("ui_left"):
		movement.x -= 1
	if Input.is_action_pressed("ui_up"):
		movement.y -=1
	if Input.is_action_pressed("ui_down"):
		movement.y +=1
	if movement.length() > 0: #Normaliza la velocidad para evitar error diagonal
		movement = movement.normalized() * player_speed
	position += movement * delta

func _process(delta):
	player_movement(delta)
