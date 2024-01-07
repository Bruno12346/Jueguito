extends Node2D

signal definir_ataque(attack)

var dice_in = false
var dado : dice

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dice_in && Input.is_action_just_pressed("lmb"):
		definir_ataque.emit(dado.valor)
		dado.queue_free()



func _on_area_entered(area):
	dice_in = true
	dado = area
	print("ses")

func _on_area_exited(area):
	dice_in = false


func _on_body_entered(body):
	dice_in = true
	dado = body
	print("ses1")



func _on_body_exited(body):
	dice_in = false
