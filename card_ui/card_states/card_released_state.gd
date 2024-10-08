extends CardState

var played = false
var targets = []

func enter() -> void:
	card_ui.state.text = "PLAYED"
	played = false
	targets = []
	
	# card is only played if it is currently over an Area2d
	if not card_ui.targets.is_empty(): 
		for target in card_ui.targets:
			targets.append(target)
		played = true
		print("play card for target", card_ui.targets)

func on_input(_event: InputEvent) -> void:
	# transition cannot be requested until current state is entered
	# the transition is requested on the next input.
	transition_requested.emit(self, CardState.State.BASE)
