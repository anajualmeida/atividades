extends Control
@onready var sprite = $AnimatedSprite2D
@onready var sprite2 = $AnimatedSprite2D2
@onready var button = $Button

var is_playing = false

func _ready():
	button.text = "Iniciar"
	button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	_toggle_animation()

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"): # tecla espaço padrão
		_toggle_animation()

func _toggle_animation():
	if is_playing:
		sprite.stop()
		sprite2.stop()
		is_playing = false
		button.text = "Iniciar"
	else:
		sprite.play("fly")
		sprite2.play("run")
		is_playing = true
		button.text = "Parar"	
