#ninetynine bottles of beer poem
bottles = 99
while bottles > 0
	puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer, if one of those bottles should happen to fall"
	bottles -= 1
	puts "There'll be #{bottles} bottles of beer on the wall"
end
puts "Now there no bottles of beer on the wall"

#Deaf Grandma
bye = 0
while true
puts 'Hello sonny'
response = gets.chomp
if response == response.upcase
	puts "Aye, no need to yell I'm not deaf"
elsif response == 'Bye'
	if bye == 3
		puts "Oh, byebye then"
		break
	else 
		bye += 1
		puts "Well piss off I wasn't born in" 
		puts (rand(1902..1980).to_s + " you know")
	end
else
	puts "Well piss off I wasn't born in"; 
	puts (rand(1902..1980).to_s + " you know")
end
end

#Leap Year
puts "Name a starting year"
year_1 = gets.chomp.to_i

puts "Name another year"
year_2 = gets.chomp.to_i
if year_1 < year_2
	while year_1 <= year_2
		if year_1 % 4 == 0 && !(year_1 % 100 == 0) || year_1 % 100 == 0 && year_1 % 400 == 0
			puts year_1
			year_1 += 1
		else
			year_1 += 1
		end
	end
else
	while year_1 >= year_2
		if year_1 % 4 == 0 && !(year_1 % 100 == 0) || year_1 % 100 == 0 && year_1 % 400 == 0
			puts year_1
			year_1 -= 1
		else
			year_1 -= 1
		end
	end
end