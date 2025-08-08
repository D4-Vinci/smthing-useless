extends Node


func _ready():
	pass



func _process(delta):
	if Input.is_action_just_pressed("ui_accept")
		CPUParticles2D.emitting = !$CPUParticles2D.emitting
