extends HTTPRequest

var token
var player_id


func authenticate_guest_session():
	var url = "https://api.lootlocker.io/game/v2/session/guest"
	var header = ["Content-Type: application/json"]
	var method = HTTPClient.METHOD_POST
	var request_body = {
		"game_key" : "dev_e343442eb5c34bd2b02125f6491bab47",
		"game_version" : "1.0.1",
		"player_identifier" : player_id,
		"development_mode" : true
	}
	request(url, header, false, method, to_json(request_body))
	
	var response = yield(self, "request_completed")[3]
	response = JSON.parse(response.get_string_from_utf8()).result
	
	if "session_token" in response:
		token = response ["session_token"]
	
	
