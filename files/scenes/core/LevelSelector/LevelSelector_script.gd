extends Node2D

@export var panels: Array[Area2D]
@onready var camera_2d: Camera2D = $Content/Camera2D

@onready var engineer_character: CharacterBody2D = $Content/EngineerCharacter

@onready var animation_player: AnimationPlayer = $Content/AnimationPlayer

func _ready() -> void:
	engineer_character.get_node("Camera2D").enabled = false
	engineer_character.get_node("AnimatedSprite2D").play("Sprint")
	engineer_character.get_node("AnimatedSprite2D").flip_h = true
	engineer_character.enabled = false
	animation_player.play("slide_in")
	#engineer_character.get_node("Camera2D").position.x = 138



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered():
	pass

func _on_body_exited():
	pass


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	engineer_character.get_node("Camera2D").enabled = true
	camera_2d.enabled = false
	engineer_character.enabled = true


func _on_crane_panel_body_entered(body: Node2D) -> void:
	pass # Replace with function body.

func _on_crane_panel_body_exited(body: Node2D) -> void:
	pass # Replace with function body.

func _on_roboarm_panel_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
