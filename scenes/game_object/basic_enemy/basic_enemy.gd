extends CharacterBody2D

@onready var visuals = $Visuals
@onready var velocity_component = $VelocityComponent


func _process(delta: float) -> void:
	velocity_component.accelerate_to_player()
	velocity_component.move(self)
	
	var move_sign = sign(velocity.x)
	if move_sign != 0:
		visuals.scale = Vector2(move_sign, 1)
