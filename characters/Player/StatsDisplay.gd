extends Label

var ammo = 0
var health = 0

func update_ammo(amnt):
	ammo = amnt
	update_display()
	
func update_health(amnt):
	health = amnt
	update_display()
	
func update_display():
	text = "Vida: " + str(health)
	var ammo_amnt = str(ammo)
	text += "\nMunição: " + ammo_amnt
