extends CharacterBody2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite  = $AnimatedSprite2D

const lines: Array[String] = [
	"Test line"
]

const SPEED = 130.0
const JUMP_VELOCITY = -300.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	move_and_slide()

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	print("I've interacted with the council member")
