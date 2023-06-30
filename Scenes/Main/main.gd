extends Control

@export var timer_list: Control


func _ready():
	if timer_list == null:
		printerr("timer_list is null")


func _on_start_timer_button_pressed() -> void:
	timer_list.add_timer()
	# todo: if timer list has max number of timers, disable button
