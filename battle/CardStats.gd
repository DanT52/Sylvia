extends Node

@export var ability_name = 'Fireball'
@export var cost = 1	# Morsel cost
@export var effects = {'damage': 1}

func apply_effects(enemy):
	enemy.stats.receiveDMG(effects['damage'])
