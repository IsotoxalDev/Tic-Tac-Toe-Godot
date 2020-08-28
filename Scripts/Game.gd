extends Node

const o = preload ("res://o.tscn")
const x = preload ("res://x.tscn")
const a1 = Vector2(0, 0)
const a2 = Vector2(110, 0)
const a3 = Vector2(210, 0)
const b1 = Vector2(0, 110)
const b2 = Vector2(110, 110)
const b3 = Vector2(210, 110)
const c1 = Vector2(0, 210)
const c2 = Vector2(110, 210)
const c3 = Vector2(210, 210)
var curplayer = 0
var turn = 0
var A1 = 0
var A2 = 0
var A3 = 0
var B1 = 0
var B2 = 0
var B3 = 0
var C1 = 0
var C2 = 0
var C3 = 0

func _ready():
	set_process(true)
	pass 

func Make(inp, pos, posit, chk):
	if chk == 1 :
		if inp == 1:
			var X = x.instance()
			X.set_position(pos)
			get_node(posit).hide()
			get_node("X_Container").add_child(X)
		if inp == 2:
			var O = o.instance()
			O.set_position(pos)
			get_node("O_Container").add_child(O)
		pass
	else:
		 pass

func _on_a1_pressed():
	turn += 1
	if curplayer == 0:
		A1 += 1
		Make(1, a1, "a1", A1)
		curplayer += 1
	elif curplayer == 1:
		A1 += 1
		Make(2, a1, "a1", A1)
		curplayer = 0
	pass

func _on_b1_pressed():
	turn += 1
	if curplayer == 0:
		B1 += 1
		Make(1, b1, "b1", B1)
		curplayer += 1
	elif curplayer == 1:
		B1 += 1
		Make(2, b1, "b1", B1)
		curplayer = 0
	pass

func _on_c1_pressed():
	turn += 1
	if curplayer == 0:
		C1 += 1
		Make(1, c1, "c1", C1)
		curplayer += 1
	elif curplayer == 1:
		C1 += 1
		Make(2, c1, "c1", C1)
		curplayer = 0
	pass

func _on_a2_pressed():
	turn += 1
	if curplayer == 0:
		A2 += 1
		Make(1, a2, "a2", A2)
		curplayer += 1
	elif curplayer == 1:
		A2 += 1
		Make(2, a2, "a2", A2)
		curplayer = 0
	pass

func _on_b2_pressed():
	turn += 1
	if curplayer == 0:
		B2 += 1
		Make(1, b2, "b2", B2)
		curplayer += 1
	elif curplayer == 1:
		B2 += 1
		Make(2, b2, "b2", B2)
		curplayer = 0
	pass

func _on_c2_pressed():
	turn += 1
	if curplayer == 0:
		C2 += 1
		Make(1, c2, "c2", C2)
		curplayer += 1
	elif curplayer == 1:
		C2 += 1
		Make(2, c2, "c2", C2)
		curplayer = 0
	pass

func _on_a3_pressed():
	if curplayer == 0:
		A3 += 1
		Make(1, a3, "a3", A3)
		curplayer += 1
	elif curplayer == 1:
		A3 += 1
		Make(2, a3, "a3", A3)
		curplayer = 0
	pass

func _on_b3_pressed():
	if curplayer == 0:
		B3 += 1
		Make(1, b3, "b3", B3)
		curplayer += 1
	elif curplayer == 1:
		B3 += 1
		Make(2, b3, "b3", B3)
		curplayer = 0
	pass

func _on_c3_pressed():
	if curplayer == 0:
		C3 += 1
		Make(1, c3, "c3", C3)
		curplayer += 1
	elif curplayer == 1:
		C3 += 1
		Make(2, c3, "c3", C3)
		curplayer = 0
	pass

func _process(delta):
	pass
