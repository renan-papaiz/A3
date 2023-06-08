extends Area

class_name Hitbox

export var quarter_spot = false
export var quarter_spot_damage_multiplier = 0.25
export var half_spot = false
export var half_spot_damage_multiplier = 0.5
export var double_spot = false
export var double_spot_damage_multiplier = 2
export var quadruple_spot = false
export var quadruple_spot_damage_multiplier = 4

signal hurt

func hurt(damage: int, dir: Vector3):
	if quadruple_spot:
		emit_signal("hurt", damage * quadruple_spot_damage_multiplier, dir)
	elif double_spot:
		emit_signal("hurt", damage * double_spot_damage_multiplier, dir)
	elif half_spot:
		emit_signal("hurt", damage * half_spot_damage_multiplier, dir)
	elif quarter_spot:
		emit_signal("hurt", damage * quarter_spot_damage_multiplier, dir)
	else:
		emit_signal("hurt", damage, dir)
	
