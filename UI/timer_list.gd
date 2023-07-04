class_name TimerList extends GridContainer

@export var timer_row: PackedScene
@export var settings: AppSettings


func _ready() -> void:
	if timer_row == null:
		printerr("timer_row is null")


func add_timer() -> void:
	if is_max_timers():
		return
	_stop_timers()
	var row = timer_row.instantiate()
	add_child(row)
	row.start_timer()


func _stop_timers() -> void:
	for child in get_children():
		child.stop_timer()


func is_max_timers() -> int:
	var children = 0
	for child in get_children():
		if not child.is_queued_for_deletion():
			children += 1
	return children == settings.max_timers
