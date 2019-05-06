extends RigidBody2D
class_name Bird


func _physics_process(delta: float) -> void:
    if rotation_degrees < -30:
        rotation_degrees = -30

    if linear_velocity.y > 0:
        angular_velocity = 1.5



func _input(event: InputEvent) -> void:
    if event.is_action_pressed("flap"):
        flap()


func flap() -> void:
    linear_velocity = Vector2(linear_velocity.x, -150)
    angular_velocity = -3