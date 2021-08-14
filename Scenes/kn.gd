extends KinematicBody2D

var gravidade = 10
var horizontal = 200
var vertical = -500
var velocidade = Vector2()
func _process(_delta):
	velocidade += Vector2(0,gravidade)
	if Input.is_action_just_pressed("click"):
		velocidade = Vector2(horizontal, vertical)
# warning-ignore:return_value_discarded
	move_and_slide(velocidade)
