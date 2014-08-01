#prompt
#create a 5 questions game, that asks a question, collects the answer, compares it to my answers and outputs a score
#Introduction to the game.
puts "It's time for the 5 questions game! You Ready?\n"
puts "Instructions: \nAnswer all questions, your score will be output at the end of the game.\n"
#define the questions and the answers
questions = [["Is the sky blue?","Y"],["Is it summer?","Y"],["Is the Whitehouse green?","N"],["Is this a great day?","N"],["Is it good to be alive?","N"]]
score = 0 #running count of score
#output questions and collect the answer
questions.each do |q|
	puts q[0]
	answer = gets.chomp
	if q[1] == answer.upcase
		score +=1
	elsif answer.upcase != ("Y"||"N")
		puts "Please enter Y or N"
		answer = gets.chomp
	end
end
puts "Your score: #{score} out of #{questions.length}"


