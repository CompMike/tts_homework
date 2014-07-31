#prompt:
# write program that prints the lyrics to 99 bottles.
$i = 99
$num = 1
while $i > $num
	if $i < 99 && $i > 2
		puts $i.to_s + ' ♬ Bottles of beer on the wall ♬ '
		puts $i.to_s + " Bottles of beer, take one down, pass it around "
		puts ($i - 1).to_s + " ♬ Bottles of beer on the wall ♬"
		puts "------------------------------------------------"
	else
		puts '2 ♬ Bottles of beer, take one down, pass it around'
		puts '1 ♬ Bottle of beer on the wall :('
		puts '1 Bottle of beer, take one down, pass it around :('
		puts '0 ♬ Bottles of beer on the wall ♬ :('
	end
	$i -=1
end

