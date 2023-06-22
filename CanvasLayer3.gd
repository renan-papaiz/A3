extends CanvasLayer

export (PackedScene) var board_entry_scene

var player_name = "Testing"
var player_score = "12345"

onready var name_label = $ScorePanel/NameLabel
onready var score_label = $ScorePanel/ScoreLabel

func ready():
	update_labels()

func update_labels():
	name_label.text = "%s" % player_name
	score_label.text = "%s" % player_score
	
