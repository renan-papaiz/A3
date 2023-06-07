extends Spatial

export var flash_time = 0.05
var timer : Timer
func _ready():
	timer = Timer.new()
	add_child(timer)
	timer.wait_time = flash_time
	timer.connect("timeout", self, "end_flash")

func flash():
	timer.start()
	show()

func end_flash():
	hide()
	
