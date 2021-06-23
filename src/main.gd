extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	OS.center_window()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_reboot_pressed():
	OS.execute("xterm", ["-e", "sudo reboot"])


func _on_shutdown_pressed():
	OS.execute("xterm", ["-e", "sudo poweroff"])

func _on_back_pressed():
	get_tree().quit()

func _on_logout_pressed():
	OS.execute("xterm", ["-e", "sudo pkill -KILL -u $USER"])
