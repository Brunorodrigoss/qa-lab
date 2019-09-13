class Conta
    attr_accessor :balance, :name

    def initialize(name)
        self.balance = 0.0
        self.name = name
    end
    
    def deposit(value)
        self.balance += value
        # puts 'Depositing the amount of '+value.to_s+' reais.'
        puts "Depositing the amount of #{value} reais in #{self.name}'s account."
    end
end

puts 'Enter your name: '
c = Conta.new(gets.chomp)
c.deposit(100.00)
puts c.balance

c.deposit(10)
puts c.balance