extends Control



func _on_start_button_pressed() -> void:
		SignalBus.toggle_panel_requested.emit()
