extends Label

const MAX_LINES = 3
var pickups_info = []

func _ready():
	text = ""
	
func add_pickups_info(pickup_type, amount):
	$RemoveInfoTimer.start()
	match pickup_type:
		Pickup.PICKUP_TYPES.MACHINE_GUN:
			pickups_info.push_front("Você pegou uma Metralhadora!")
		Pickup.PICKUP_TYPES.MACHINE_GUN_AMMO:
			pickups_info.push_front("+15 Munições de Metralhadora")
		Pickup.PICKUP_TYPES.SHOTGUN:
			pickups_info.push_front("Você pegou uma Escopeta")
		Pickup.PICKUP_TYPES.SHOTGUN_AMMO:
			pickups_info.push_front("+2 Munições de Escopeta")
	while pickups_info.size() >= MAX_LINES:
		pickups_info.pop_back()
		
func update_display():
	text = ""
	for pickups_info_text in pickups_info:
		text += pickups_info_text + "\n"

func remove_pickups_info():
	if pickups_info.size() > 0:
		pickups_info.pop_back()
	update_display()
