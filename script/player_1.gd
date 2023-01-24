extends Area2D

var speed:int = 22

func _ready():
	self.add_to_group("player")

func _physics_process(delta)->void:
	if Input.get_action_raw_strength("ui_up"):
		self.position.y -= speed
	if Input.get_action_raw_strength("ui_down"):
		self.position.y += speed
	
	self.position.y = clamp(self.position.y,0,648-128)	
	pass
