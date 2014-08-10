family = {"Mother" => "Edwina", "Father" => "Dominic", "Sister"=>"Jasmine"}

puts "Who do you want to find?"

name = gets.capitalize.chomp

puts family[name]