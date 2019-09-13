
def say_hello(name)
    puts 'Hello, '+name+' !'
end

def return_name
    puts 'Type your name'
    name = gets.chomp
end

say_hello(return_name)

def sum(v1, v2)
    total = v1 + v2
    total
end
value = sum(2,5)
puts value

def testReturn
    total = 5 + 5
end
value = testReturn
puts value

