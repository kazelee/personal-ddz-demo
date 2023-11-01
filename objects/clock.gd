@tool
extends Sprite2D

@onready var time_label: Label = $Time
@onready var timer: Timer = $Timer


func _process(_delta: float) -> void:
	time_label.text = str(int(timer.time_left + 1))


func start(time: int) -> void:
	timer.start(time)
	time_label.show()
#	var _time := time
#	while _time > 0:
#		time_label.text = str(_time)
#		await get_tree().create_timer(1).timeout
#		_time -= 1
#	queue_free()

#func stop() -> void:
#	queue_free()


func _on_timer_timeout() -> void:
	queue_free()
