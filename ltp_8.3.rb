Buildng and sorting an array

puts "Enter a single word on each line, when you're done press enter 1on an empty line, and I'll sort the words for you"
array = []
response = gets.chomp

while true
if response.empty?
	puts array.sort
	break
else
	array.push response
	puts "Enter next word"
	response = gets.chomp
end
end

