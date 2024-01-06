extends Node2D

var dice_in = false
var dado : dice

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dice_in && Input.is_action_just_pressed("lmb"):
		pass


func _on_body_entered(body):
	dice_in = true
	dado = body

func _on_body_exited(body):
	dice_in = false
