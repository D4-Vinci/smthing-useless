extends TouchScreenButton

@onready var particles = $CPUParticles2D
@onready var area = $Area2D

func _ready():
	particles.emitting = false
	area.input_event.connect(_on_area_input_event)

func _on_area_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch:
		if event.pressed:
			particles.emitting = true
		else:
			particles.emitting = false
