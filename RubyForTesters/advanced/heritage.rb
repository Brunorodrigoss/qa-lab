class Vehicle
    attr_accessor :name, :brand, :model

    def initialize(name, brand, model)
        self.name = name
        self.brand = brand
        self.model = model
    end

    def turnOn
        puts "The #{self.name} is ready to go away!"
    end

    def honk
        puts 'Beeep!'
    end
end

class Car < Vehicle
    def driving
        puts "#{self.name} starting the route"
    end
end

class Motorcycle < Vehicle
    def pilot
        puts "#{self.name} starting the route"
    end
end

civic = Car.new('Civic', 'Honda', 'SI')
civic.turnOn
civic.honk
civic.driving

fazer = Motorcycle.new('Fazer', 'Yamaha', '250x')
fazer.turnOn
fazer.honk
fazer.driving

