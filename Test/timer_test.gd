extends "res://UI/timer_list.gd"

var _passed: bool = false


func _ready() -> void:
	if timer_row == null:
		printerr("timer_row is null")
	timer_is_created()
	timer_is_stopped_on_new()
	timers_stopped_on_resume()
	max_timers_new_timer_not_added()
	_passed = true


func _process(_delta) -> void:
	if _passed:
		print("All tests passed!")
		get_tree().quit()
	assert(_passed)


func timer_is_created() -> void:
	add_timer()
	assert(get_child(0).running)


func timer_is_stopped_on_new() -> void:
	add_timer()
	assert(not get_child(0).running)
	assert(get_child(1).running)


func timers_stopped_on_resume() -> void:
	add_timer()
	get_child(0).resume()
	assert(get_child(0).running)
	assert(not get_child(1).running)
	assert(not get_child(2).running)


func max_timers_new_timer_not_added() -> void:
	add_timer()
	add_timer()
	add_timer()
	assert(is_max_timers())


func delete_timer() -> void:
	get_child(0).delete()
	assert(not is_max_timers())


func delete_all_timers() -> void:
	for timer in get_children():
		timer.delete()
	assert(not is_max_timers())
	assert(get_child_count() == 0)
