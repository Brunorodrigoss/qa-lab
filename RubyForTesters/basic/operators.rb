number1 = 0
number2 = 0
total = 0

puts 'Type a number:'

# gets.chomp - Receive a typed number
# .to_i - Convert to Integer
number1 = gets.chomp.to_i 

puts 'Type another number:'
number2 = gets.chomp.to_i

#total = number1 + number2
# total = number1 - number2
# total = number1 * number2
total = number1 / number2
puts total

# Comparision operators
# puts number1 > number2
# puts number1 >= number2
# puts number1 < number2
# puts number1 <= number2
# puts number1 != number2

# puts number1 == number2 
puts number1.eql?(number2) 