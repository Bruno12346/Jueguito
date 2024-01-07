extends StaticBody2D
class_name dice

var valor
var tirado := false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if tirado:
		position = get_global_mouse_position()


func _on_button_pressed():
	if tirado == false:
		valor = randi_range(1,6)
		$Button.text = ""+str(valor)
		tirado = true


