extends "res://Scenes/Upgrades/Menuscript.gd"

func focus():

	if Input.is_action_just_pressed("ui_open_upgrades_up"):
		$SoundMenu.play()
		get_node("VBoxContainer/"+unidades[focus]+"/Label").hide()
		focus-=1
		if focus <0:
			focus = maxim
	elif Input.is_action_just_pressed("ui_close_upgrades_down"):
		$SoundMenu.play()
		get_node("VBoxContainer/"+unidades[focus]+"/Label").hide()
		focus += 1
		if focus >maxim:
			focus = 0	
	if focused == "buildings":
		if Input.is_action_just_pressed("ui_open_upgrades_up"):
			get_node("VBoxContainer/"+unidades[focus]+"/Label").hide()
			focus-=1
			if focus <0:
				focus = maxim
		elif Input.is_action_just_pressed("ui_close_upgrades_down"):
			get_node("VBoxContainer/"+unidades[focus]+"/Label").hide()
			focus += 1
			if focus >maxim:
				focus = 0	
		get_node("VBoxContainer/"+unidades[focus]).grab_focus()
		get_node("VBoxContainer/"+unidades[focus]+"/Label").show()	
		
		if Input.is_action_just_pressed("ui_A"):
			unidades(unidades[focus])
