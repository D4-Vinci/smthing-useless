extends Booze

@onready var particles = $CPUParticles2D

# Threshold in degrees before jug starts pouring
var tilt_threshold = 25.0  

func _ready():
	particles.emitting = false

func _process(delta):
	var accel = Input.get_accelerometer()  
	# accel.x = left/right tilt, accel.y = forward/back tilt
	# We can map x tilt to jug rotation
	rotation_degrees = clamp(accel.x * 90.0, -90, 90)

	# Check tilt magnitude
	if abs(rotation_degrees) > tilt_threshold:
		particles.emitting = true
	else:
		particles.emitting = false
