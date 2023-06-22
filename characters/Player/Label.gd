extends Label

func _process(delta):
	update_display()

func update_display():
	text = "PARABÉNS! Você matou todos os monstros!\n Seu tempo: " + Stopwatch.text + "s"
