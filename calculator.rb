def say(msg)
  puts "<---#{msg.upcase}--->"
end

while true
say "What's the first number?"
first_number = gets.chomp

say "What's the second number?"
second_number = gets.chomp

say "Do you want to 1)Add, 2)Subtract, 3)Divide, or 4)Multiply or Exit?"
operator = gets.chomp.downcase
  if operator == "1"
    result = first_number.to_f + second_number.to_f
  elsif operator == "2"
    result = first_number.to_f - second_number.to_f
  elsif operator == "3"
    result = first_number.to_f / second_number.to_f
  elsif operator == "4"
    result = first_number.to_f * second_number.to_f
  elsif operator == "exit"
    say "Bye now"
    break
  else
    say "That operator is invalid. Please choose Add, Subtract, Divide, Multiply or Exit"
  end

say "Result is #{result}"

end   
    