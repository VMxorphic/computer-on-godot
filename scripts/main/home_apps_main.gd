extends Control





#App Signals To go to the app's scenes-------------------------------------------------------------

func _on_trash_recycle_button_pressed() -> void:
	pass # Replace with function body.


func _on_files_button_pressed() -> void:
	pass # Replace with function body.


func _on_calculator_app_button_pressed() -> void:
	print("hhdd")
	get_tree().change_scene_to_file("res://scenes/apps/calculator_app_main.tscn")


func _on_chatting_app_button_pressed() -> void:
	pass 


func _on_browser_app_button_pressed() -> void:
	pass # Replace with function body.


func _on_sticky_note_app_button_pressed() -> void:
	pass # Replace with function body.

func _on_gaming_app_button_pressed() -> void:
	pass # Replace with function body.

func _on_paint_app_button_pressed() -> void:
	pass # Replace with function body.
