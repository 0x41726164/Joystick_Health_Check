extends Control

func _ready():
	$logo/r1.hide()
	$logo/r2.hide()
	$logo/r3.hide()
	$logo/rd.hide()
	$logo/rl.hide()
	$logo/rr.hide()
	$logo/rt.hide()
	
	$logo/l1.hide()
	$logo/l2.hide()
	$logo/l3.hide()
	$logo/ld.hide()
	$logo/ll.hide()
	$logo/lr.hide()
	$logo/lt.hide()
	
	$logo/start.hide()
	$logo/select.hide()

func input_handler():
	
	# ----- CROSS -----
	if Input.is_action_pressed("rb"):
		$info/cross/output.text = "ON  - 1.0"
		$logo/rd.show()
	else:
		$info/cross/output.text = "OFF - 0.0"
		$logo/rd.hide()
	
	# ----- CIRCLE -----
	if Input.is_action_pressed("rr"):
		$info/circle/output.text = "ON  - 1.0"
		$logo/rr.show()
	else:
		$info/circle/output.text = "OFF - 0.0"
		$logo/rr.hide()
	
	# ----- SQUARE -----
	if Input.is_action_pressed("rl"):
		$info/square/output.text = "ON  - 1.0"
		$logo/rl.show()
	else:
		$info/square/output.text = "OFF - 0.0"
		$logo/rl.hide()
	
	# ----- TRIANGLE -----
	if Input.is_action_pressed("rt"):
		$info/triangle/output.text = "ON  - 1.0"
		$logo/rt.show()
	else:
		$info/triangle/output.text = "OFF - 0.0"
		$logo/rt.hide()
	
	# ----- DPAD - DOWN -----
	if Input.is_action_pressed("lb"):
		$info/dpad_down/output.text = "ON  - 1.0"
		$logo/ld.show()
	else:
		$info/dpad_down/output.text = "OFF - 0.0"
		$logo/ld.hide()
	
	# ----- DPAD - RIGHT -----
	if Input.is_action_pressed("lr"):
		$info/dpad_right/output.text = "ON  - 1.0"
		$logo/lr.show()
	else:
		$info/dpad_right/output.text = "OFF - 0.0"
		$logo/lr.hide()
	
	# ----- DPAD - LEFT -----
	if Input.is_action_pressed("ll"):
		$info/dpad_left/output.text = "ON  - 1.0"
		$logo/ll.show()
	else:
		$info/dpad_left/output.text = "OFF - 0.0"
		$logo/ll.hide()
	
	# ----- DPAD - UP -----
	if Input.is_action_pressed("lt"):
		$info/dpad_up/output.text = "ON  - 1.0"
		$logo/lt.show()
	else:
		$info/dpad_up/output.text = "OFF - 0.0"
		$logo/lt.hide()
	
	# ----- START -----
	if Input.is_action_pressed("start"):
		$info/start/output.text = "ON  - 1.0"
		$logo/start.show()
	else:
		$info/start/output.text = "OFF - 0.0"
		$logo/start.hide()
	
	# ----- SELECT -----
	if Input.is_action_pressed("select"):
		$info/select/output.text = "ON  - 1.0"
		$logo/select.show()
	else:
		$info/select/output.text = "OFF - 0.0"
		$logo/select.hide()
	
	# ----- R1 -----
	if Input.is_action_pressed("r1"):
		$info/r1/output.text = "ON  - 1.0"
		$logo/r1.show()
	else:
		$info/r1/output.text = "OFF - 0.0"
		$logo/r1.hide()
	
	# ----- R2 -----
	if Input.is_action_pressed("r2"):
		$info/r2/output.text = "ON  - 1.0"
		$logo/r2.show()
	else:
		$info/r2/output.text = "OFF - 0.0"
		$logo/r2.hide()
	
	# ----- R3 -----
	if Input.is_action_pressed("r3"):
		$info/r3/output.text = "ON  - 1.0"
		$logo/r3.show()
	else:
		$info/r3/output.text = "OFF - 0.0"
		$logo/r3.hide()
	
	# ----- L1 -----
	if Input.is_action_pressed("l1"):
		$info/l1/output.text = "ON  - 1.0"
		$logo/l1.show()
	else:
		$info/l1/output.text = "OFF - 0.0"
		$logo/l1.hide()
	
	# ----- L2 -----
	if Input.is_action_pressed("l2"):
		$info/l2/output.text = "ON  - 1.0"
		$logo/l2.show()
	else:
		$info/l2/output.text = "OFF - 0.0"
		$logo/l2.hide()
	
	# ----- L3 -----
	if Input.is_action_pressed("l3"):
		$info/l3/output.text = "ON  - 1.0"
		$logo/l3.show()
	else:
		$info/l3/output.text = "OFF - 0.0"
		$logo/l3.hide()
	

func checkbutton_handler():
	if $info/vibration.pressed:
		Input.start_joy_vibration(0, 0.5, 1.0, 300)
	else:
		Input.stop_joy_vibration(0)

func end_process():
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

func _process(delta):
	end_process()
	input_handler()
	checkbutton_handler()


func _on_github_pressed():
	OS.shell_open("https://github.com/AradHamidSamiee")
func _on_linkedin_pressed():
	OS.shell_open("https://www.linkedin.com/in/aradhamidsamiee")
func _on_web_pressed():
	OS.shell_open("https://aradhamidsamiee.github.io/")
