extends Area2D


# Called when the node enters the scene tree for the first time.



func _on_area_entered(area):
	print("hello")
	BallGo.player2_score += 1
	pass # Replace with function body.
