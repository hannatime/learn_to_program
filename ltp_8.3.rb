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

# #Table of contents 2
# table = []
# line_width = 50

# heading = "Table of contents"
# first_chapter = "Chapter 1:"
# first_title = "Getting Started"
# first_page = "Page 1"
# second_chapter = "Chapter 2:"
# second_title = "Numbers"
# second_page = "Page 3"
# third_chapter = "Chapter 3:"
# third_title = "Letters"
# third_page = "Page 19"

# table.push first_chapter, first_title, first_page, second_chapter, second_title, second_page, third_chapter, third_title, third_page

# puts "   "
# puts(heading.center(line_width))
# puts "   "
# puts(first_chapter.ljust(line_width/3) + (first_title.ljust(line_width/3)) + first_page.rjust(line_width/3))
# puts(second_chapter.ljust(line_width/3) + (second_title.ljust(line_width/3)) + second_page.rjust(line_width/3))
# puts(third_chapter.ljust(line_width/3) + (third_title.ljust(line_width/3)) + third_page.rjust(line_width/3))
# puts "   "
# puts (heading.center(line_width))
# table.each do |item|
# 	beginning = item[0]
# 	middle = item[1]
# 	ending = item[2]
# 	puts beginning.ljust(15) + middle.center(10)+ ending.rjust(15)
# end
title = 'Table of Contents'
chapters = [['Getting Started', 1],
['Numbers', 9],
['Letters', 13]]
puts title.center(50)
puts
chap_num = 1
chapters.each do |chap|

name = chap[0]
page = chap[1]
beginning = 'Chapter ' + chap_num.to_s + ': ' + name
ending = 'page ' + page.to_s
puts beginning.ljust(30) + ending.rjust(20)
chap_num = chap_num + 1
end