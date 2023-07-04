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


func _on_timer_list_child_exiting_tree(_node: Node):
	_check_start_button()


func _on_timer_list_child_entered_tree(_node: Node):
	_check_start_button()


func _check_start_button() -> void:
	start_timer_button.disabled = timer_list.is_max_timers()
