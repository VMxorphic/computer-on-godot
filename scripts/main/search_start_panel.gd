extends Panel

@onready var panel: Panel = $"."

var tween: Tween
var is_open: bool = false

@export var closed_height: float= 800
@export var open_height: float = 460.0
@export var duration: float = 0.35


func _ready() -> void:
	panel.position.y = closed_height

	SignalBus.toggle_panel_requested.connect(toggle_panel)

func toggle_panel() -> void:
	if tween and tween.is_running():
		tween.kill()	
	is_open = !is_open
	var target_y: float = (size.y - open_height) if is_open else closed_height
	
	tween = create_tween()
	tween.set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
	tween.tween_property(panel, "position:y", target_y, duration)
