extends Node2D


@export var vida : int
@export var escudo : int
@export var ataque : int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_espada_definir_ataque(attack):
	ataque = attack
	print(ataque)
