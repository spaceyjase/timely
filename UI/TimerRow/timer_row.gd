extends Control

@export var timer_label: Label
@export var timer_line_edit: LineEdit
@export var timer_button: Button
@export var delete_container: MarginContainer

var _stopped: bool = true:  # todo: setter and getter to reconfigure the UI
	get:
		return _stopped
	set(value):
		_stopped = value
		if _stopped:
			timer_button.text = "Resume"
			timer_button.theme_type_variation = "ResumeButton"
		else:
			timer_button.text = "Stop"
			timer_button.theme_type_variation = "StopButton"

var timer_name: String:
	get:
		return timer_line_edit.text
	set(value):
		timer_line_edit.text = value

var _timer: float = 0.0

var running: bool:
	get:
		return not _stopped


func start_timer() -> void:
	_stopped = false


func _ready() -> void:
	timer_line_edit.grab_focus()


func resume() -> void:
	if not _stopped:
		stop_timer()
	else:
		get_tree().call_group("timer_row", "stop_timer")
		start_timer()


func stop_timer() -> void:
	_stopped = true


func delete() -> void:
	queue_free()


func _process(delta):
	if not _stopped:
		_timer += delta
		timer_label.text = _format_timer()


func _format_timer() -> String:
	var minutes: int = floor(_timer / 60)
	var hours: int = floor(minutes as float / 60)
	minutes = minutes % 60
	return "%02d:%02d:%02d" % [hours, minutes, fmod(_timer, 60)]


func _on_timer_line_edit_text_submitted(_new_text: String):
	timer_line_edit.release_focus()


func _on_timer_button_pressed():
	resume()


func _on_close_button_pressed():
	delete_container.visible = true


func _on_delete_button_pressed():
	delete()


func _on_cancel_button_pressed():
	delete_container.visible = false
