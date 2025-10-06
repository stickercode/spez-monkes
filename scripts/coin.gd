extends CanvasLayer

var coins = 0
@onready var coin_label = $HBoxContainer/Label

func _ready():
	$Timer.connect("timeout", Callable(self, "_on_Timer_timeout"))
	

func update_coin_display():
	if coin_label:
		coin_label.text = str(coins)



func _on_timer_timeout() -> void:
	coins += 1
	update_coin_display() 
	print("Coins: ", coins) #for debugging
