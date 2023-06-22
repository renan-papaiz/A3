extends Timer

func _process(delta):
	print(get_time_left())
	if GlobalWorld.enemies.size() == 0:
		stop()
