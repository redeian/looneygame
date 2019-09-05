extends Control

var story = "Hello my name is %s My last name is %s My pet is %s My second pet is %s"
var answers = ["Mark", "Wang", "Cat", "Dog"]
var questions = []

func _ready(): 
	print( story % answers ) 

	$DisplayText.text  = "Welcome!!! \nWhat is your name?"
	
	questions.append("Welcome!!! \nWhat is your name?")
	questions.append("What is your last name?")
	questions.append("What is your pet?")
	questions.append("What is your second pet?")
	

func _on_PlayerButton_pressed():
	pass

	
