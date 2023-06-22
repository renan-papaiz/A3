extends Label

export (String) var title
export (float) var round_to
var counting = true
var count = 0

func _ready():
	if round_to == 0.0:
		round_to = 0.01

func _process(delta):
		if GlobalWorld.enemies.size() > 0:
			count += delta
			set_text("%s%%s" % title % str(stepify(count,round_to)))

func _unhandled_input(event):
	if event.is_action_released("ui_accept"):
		counting = !counting
