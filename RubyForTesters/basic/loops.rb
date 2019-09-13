5.times do
    puts 'Repeting the message'
end

5.times do |i|
    puts 'Repeting the messagem '+i.to_s+' times.'
end

init = 0
while init <= 10 do
    puts 'Repeting the messagem '+init.to_s+' times.'
    init +=1
end

for item in(0...10)
    puts 'Repeting the messagem '+item.to_s+' times.'
end

#Arrays
avengers = ['IronMan', 'Hulk', 'Spidermar', 'Thor']
puts avengers.class

avengers.each do |a| #For each
    puts a
end