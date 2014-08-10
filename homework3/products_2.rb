#prompt
#Creae an inventory program that allows adding new products, categorizing the products and prints out the current inventory
require 'json'
if File.exists?("inventory.json")
	json_file = File.open("inventory.json", "r")
	$products = JSON.load(json_file)
end

#Create an introduction to our program
puts "Welcome to Inventory Master 3000"
#Ask user what they would like to do. 1) view current inventory 2) Add to existing product 3) create new product and add to it
puts "What would you like to do?\n1.) View Current Inventory?\n2.) Modify an existing product?\n3.) Add a new product?\n4.) Delete a product?"
menu_choice = gets.chomp
#check if input is valid
while menu_choice != "1" && menu_choice != "2" && menu_choice != "3" && menu_choice != "4"
	puts "Please enter either 1,2 or 3."
	puts "What would you like to do?\n1.) View Current Inventory?\n2.) Modify an existing product?\n3.) Add a new product?"
	menu_choice = gets.chomp
end
#method that prints out current products
def print_products
  line_width = 45
	puts("Item".ljust(line_width/3) + "Quantity".ljust(line_width/3) + "Category".ljust(line_width/3))
	puts("=" * line_width)
	$products.each do |product,quant_cat|
		puts(product.capitalize.ljust(line_width/3) + quant_cat[0].to_s.ljust(line_width/3) + quant_cat[1].capitalize.ljust(line_width/3))
	end
end

#Check if string is number
def is_number?(num)
  true if Float(num) rescue false
end

if menu_choice == "1"
	#Print out a current view of Inventory
	print_products
elsif menu_choice =="2"
	#Ask for product
	def mod_product
		puts "Which product would you like to Modify?\nHere's a list of current products.\nEnter the product name or number beside the product"
		count = 1
		$products.each do |product, quant_cat|
			puts "#{count}.) " + product.capitalize
			count +=1
		end
		#get product name and lowercase letters
		$get_product = gets.downcase.chomp
	end
	mod_product
	if is_number?($get_product)
		while $get_product.to_i > $products.length
			puts "That isn't a current product number, please try again..."
			mod_product
		end
		puts "Would you like to Modify the quantity or public? "
		puts "What's the current quantity for this product?"
		new_count = gets.chomp
		products_array = $products.to_a
		products_array[$get_product.to_i - 1][1][0] = new_count
		$products = products_array.to_h
	else
		while !$products.has_key?($get_product)
			puts "That isn't a current product, please try again..."
			mod_product
		end
		#Ask how many to add to product?
		puts "What's the current quantity for this product?"
		new_count = gets.chomp
		$products[$get_product][0] = new_count
	end
	#print current product status
	print_products
elsif menu_choice =="3"
	#Ask name of new product?
	puts "Enter new product name:"
	new_product = gets.chomp
	#create array to hold quantity and category
	$products[new_product] = []
	#Add how many to add to new product
	puts "How many new #{new_product}'s would you like to add?"
	$products[new_product][0] = gets.chomp
	puts "What category is the product?"
	$products[new_product][1] = gets.chomp
	puts "New Product Added"
	print_products
elsif menu_choice == "4"
	puts "What product would you like to delete?"
	print_products
	product_to_delete = gets.chomp
	puts "Are you sure? **Warning this action is permanent.**\nType \"DELETE\" to confirm or \"CANCEL\" to go back to main menu."
	confirm_delete = gets.chomp
	if confirm_delete == "DELETE"
		$products.delete(product_to_delete.downcase)
	end
end
#Save File before closing program
	output_file = File.open("inventory.json", "w")
	JSON.dump($products, output_file)
	output_file.close