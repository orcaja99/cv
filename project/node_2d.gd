extends Node2D

var dragging = false
@onready var sprite_2d = $Sprite2D

var ofset = Vector2(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dragging:
		sprite_2d.position = get_global_mouse_position() - ofset



func _on_button_button_up():
	dragging = false


func _on_button_button_down():
	dragging = true
	ofset= get_global_mouse_position()	- sprite_2d.global_position
