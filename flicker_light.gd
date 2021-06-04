tool
extends SpotLight


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


var time = 0
var to = 0
func _process(delta):
	time += delta
	
	if time > 0.07:
		to = rand_range(0.0, 2.6)
		time = 0
		
	self.light_energy = lerp(self.light_energy, to, 0.1)
