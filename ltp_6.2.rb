# #Angry Boss
puts "WHAT DO YOU WANT?"
response = gets.chomp.upcase

 puts "WHAT DO YOU MEAN YOU '#{response}', YOU'RE FIRED!!!"

#Table of contents
line_width = 50
heading = "Table of contents"
first_chapter = "Chapter 1:"
first_title = "Getting Started"
first_page = "Page 1"
second_chapter = "Chapter 2:"
second_title = "Numbers"
second_page = "Page 2"
third_chapter = "Chapter 3:"
third_title = "Letters"
third_page = "Page 3"

puts "   "
puts(heading.center(line_width))
puts "   "
puts(first_chapter.ljust(line_width/3) + (first_title.ljust(line_width/3)) + first_page.rjust(line_width/3))
puts(second_chapter.ljust(line_width/3) + (second_title.ljust(line_width/3)) + second_page.rjust(line_width/3))
puts(third_chapter.ljust(line_width/3) + (third_title.ljust(line_width/3)) + third_page.rjust(line_width/3))
puts "   "