students = {
	"Michael" => [],
	"Jim" => [],
	"John" => []
}

students["Michael"].push(67)
students["Michael"].push(80)
students["Jim"].push(89)
students["Jim"].push(60)
students["John"].push(99)
students["John"].push(110)

puts "grades: #{students}"

students.each do |student,grade|
	puts "#{student}: #{grade.join(', ')}"
end
