extends CanvasLayer

onready var line_edit = $LineEdit
onready var http_request = $HTTPRequest

func submit_new_highscore():
	
	var url = "https://api.lootlocker.io/game/leaderboards/15430/submit"
	var header = ["Content-Type: application/json", "x-session-token: %s" % LootLocker.token]
	var method = HTTPClient.METHOD_POST
	var request_data = {
		"score" : int(Stopwatch.text),
		"member_id" : LootLocker.player_id,
		"metadata" : line_edit.text
	}
	
	http_request.request(url, header, false, method, to_json(request_data))
	yield(http_request, "request_completed")

func _process(delta):
	if GlobalWorld.enemies.size() == 0:
		show()
