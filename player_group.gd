extends Node2D
var player: Array = []
var index : int = 0

func _ready():
	player = get_children()
	for i in player.size():
		player[i].position = Vector2(0,i*32)


func _on_enemy_group_next_player():
	if index < player.size() - 1:
		index += 1
		switch_focus(index,index - 1)
	else:
		index = 0
		switch_focus(index,player.size()-1)

func switch_focus(x,y):
	player[x].focus()
	player[y].unfocus()
