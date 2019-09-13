car  = Hash[name: 'Civic', manufacture: 'Honda', color: 'Red']
puts car

puts car[:name]
puts car[:manufacture]

car[:model] = 'SI' # Add a new information into car hash
puts car
