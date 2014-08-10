products = {'banana' => 4, 'carrot' => 10}

# #prompt the user to get specify banana count
# puts "Enter the new # of bananas"
# #get response from the user
# number_of_bananas = gets.chomp
# #prompt the user to get specify carrot count
# puts "Enter the new # of carrots"
# #get response from the user
# number_of_carrots = gets.chomp

products.each do |item, count|
	puts "Enter the new number #{item}"
	products[item] = gets.chomp
end

#ask the user for the new fruit name.
puts "Enter the new fruit name"
new_fruit = gets.chomp
#add the new fruit to our hash
products[new_fruit] = 0
#get the count of the new fruit
puts "How many #{new_fruit}s do you have?"
#set the count of our fruit
new_count = gets.chomp

products[new_fruit] = new_count

#update the banana count
#redefine the value for 'banana'
# products['banana'] = number_of_bananas
# products['carrot'] = number_of_carrots

#print out the overall inventory

products.each do |item, count|
	puts "#{item}: #{count}"
end