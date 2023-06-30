extends GridContainer

@export var timer_row: PackedScene


func _ready() -> void:
	if timer_row == null:
		printerr("timer_row is null")


func add_timer() -> void:
	# todo: stop all other timers
	_stop_timers()
	var row = timer_row.instantiate()
	add_child(row)
	row.start_timer()


func _stop_timers() -> void:
	for child in get_children():
		child.stop_timer()
