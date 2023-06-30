extends Control

@export var timer_label: Label
@export var timer_line_edit: LineEdit

var _stopped = true  # todo: setter and getter to reconfigure the UI
var _timer = 0.0


func start_timer() -> void:
	_stopped = false


func stop_timer() -> void:
	_stopped = true


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
