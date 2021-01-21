extends RigidBody2D

export var size = Vector2.ONE
export var pos = Vector2.ONE

func make_room(_pos, _size):
	position = _pos
	pos = _pos
	size = _size
	var s = RectangleShape2D.new()
	s.custom_solver_bias = 0.75
	s.extents = size
	$CollisionShape2D.shape = s
