extends Control

var story = "Hello my name is %s My last name is %s My pet is %s My second pet is %s "
var answers = []
var questions = []
var question_number = 0

func _ready(): 

	questions.append("Welcome!!! \nWhat is your name?")
	questions.append("What is your last name?")
	questions.append("What is your pet?")
	questions.append("What is your second pet?")
	
	$DisplayText.text = questions[0]
	

func _on_PlayerButton_pressed():
	
	if question_number < len(questions)-1:
		answers.append( $PlayerInput.text )
		print( answers )
		$DisplayText.text = questions[question_number+1]
		question_number = question_number + 1

	elif question_number == len(questions)-1:
		answers.append( $PlayerInput.text )
		print( answers )
		$DisplayText.text = story % answers
		
	$PlayerInput.text = ""
	