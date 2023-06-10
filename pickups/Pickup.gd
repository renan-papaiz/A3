extends Area

class_name Pickup

enum PICKUP_TYPES {HEALTH, SHOTGUN, SHOTGUN_AMMO, MACHINE_GUN, MACHINE_GUN_AMMO}

export(PICKUP_TYPES) var pickup_type
export var ammo = 10
