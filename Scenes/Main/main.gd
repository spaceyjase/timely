extends Control

@export var timer_list: Control
@export var start_timer_button: Button


func _ready():
	if timer_list == null:
		printerr("timer_list is null")


func _on_start_timer_button_pressed() -> void:
	_add_timer()


func _add_timer() -> void:
	timer_list.add_timer()
	start_timer_button.disabled = timer_list.is_max_timers()
	# todo: if timer list has max number of timers, disable button
