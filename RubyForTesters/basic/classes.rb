class Carro
    attr_accessor :nome

    def turnOn
        puts 'The car is ready'
    end
end

civic = Carro.new
puts civic.class

civic.nome = 'Civic'
puts civic.nome
civic.turnOn