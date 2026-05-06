extends Control

@onready var black = %BlackOverlay

@onready var title = %Title_Label

@onready var icon = %Icon

@onready var button = %Button

@onready var fade_time : float = 1.5

func _ready():
	button.disabled
	var tween = create_tween()
	tween.tween_property(black, "modulate", Color.TRANSPARENT, fade_time)
	await tween.finished
	var title_tween = create_tween()
	title_tween.tween_property(title, "position", Vector2(352, 248), fade_time)
	var icon_tween = create_tween()
	icon_tween.tween_property(icon, "position", Vector2(432, -44), fade_time)
	var button_tween = create_tween()
	button_tween.tween_property(button, "position", Vector2(436, 350), fade_time)
	await button_tween.finished
	button.disabled = false

func _physics_process(_delta):
	pass
