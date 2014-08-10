#prompt
#Creae an inventory program that allows adding new products, categorizing the products and prints out the current inventory
products = {'banana' => [4,'fruit'], 'carrot' => [10,'vegatable'], 'apple'=>[48, 'fruit']}
#Create an introduction to our program
puts "Welcome to Inventory Master 3000"
#Ask user what they would like to do. 1) view current inventory 2) Add to existing product 3) create new product and add to it
puts "What woudl you like to do?\n1.) View Current Inventory?\n2.) Modify an existing product?\n3.) Add a new product?"
menu_choice = gets.chomp

if menu_choice == "1"
	#Print out a current view of Inventory
	products.each do |product,quant_cat|
		puts products
	end
elsif menu_choice =="2"
	#Ask for product
	puts "Selected 2"
	#Ask how many to add to product?
elsif menu_choice =="3"
	#Ask name of new product?
	puts "Selected 3"
	#Add how many to add to new product
else
	abort("No results were returned for that query")
end