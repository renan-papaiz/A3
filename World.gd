extends Spatial

var enemies
var enemyCount

func _ready():
	match OS.get_name():
		"HTML5", "Windows", "X11":
			LootLocker.player_id = OS.get_unique_id()
			LootLocker.authenticate_guest_session()

func _process(delta):
	enemies = get_tree().get_nodes_in_group("Monsters")
	enemyCount = enemies.size()
