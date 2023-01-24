extends Area2D
var xspeed:float = 500.0
var yspeed:float = 500.0
var player1_score:int 
var player2_score:int 
var init_position:Vector2 = Vector2(576,324)
# Called when the node enters the scene tree for the first time.
func _ready():
	player1_score -= 2
	player2_score -= 2
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if self.position.x>1150:
		self.position = init_position
	elif self.position.x<2:
		self.position = init_position
#	print(get_overlapping_areas())
	for i in get_overlapping_areas():
		if i.is_in_group("qian"):
			y_back()
		elif i.is_in_group("player"):
			x_back()
	self.position += Vector2(xspeed,yspeed)*delta
	
	pass
	
	
func x_back():
	xspeed *= -1
func y_back():
	yspeed *= -1

