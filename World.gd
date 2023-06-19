extends Spatial

func _ready():
	SilentWolf.configure({
		"api_key": "xcRbnWlh1fa7Y531jLkTp5SiiuBsXpfs6U19upWG",
		"game_id" : "themaze",
		"game_version" : "1.0.0",
		"log_level" : 0
	})
	
	SilentWolf.configure_score({
		"open_scene_on_close" : "res://World.tscn"
	})
