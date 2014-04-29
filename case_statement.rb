# evaluate_num.rb


def evaluate_num(num)
	if num < 0
	  puts "You can't enter a negative number!"
	elsif num <= 50
	  puts "#{num} is between 0 and 50"
	elsif num <= 100
	  puts "#{num} is between 51 and 100"
	else
	  puts "#{num} is above 100"
	end
end

def evaluate_case_num(num)
	case num
	when num < 0
	  puts "You can't enter a negative number!"
	when 0..50
	  puts "#{num} is between 0 and 50"
	when 50..100
	  puts "#{num} is between 51 and 100"
	else
	  puts "#{num} is above 100"
	end	
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

evaluate_num(number)
evaluate_case_num(number)
