my_array = [1,2,3,4,5,"done!"]

my_array.each do |n|
	puts n
	if n == 1
		puts "is the loneliest number"
	elsif n == 3
		puts "is the way to be"
	elsif n == 4
		puts "is twice as many as two"
	elsif n == 5
		puts "and we're finally..."
	end
end