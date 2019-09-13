class Account 
    attr_accessor :balance

    def initialize(balance)
        self.balance = balance
    end

    def withdraw(value , max, fee)
        if (value > self.balance)
            return 'Insufficient balance to withdraw :('
        elsif (value > max)
            return "Maximum withdrawal limit is $ #{max}"
        else
            self.balance -= value + fee
        end
    end
end

class CheckingAccount < Account
    def withdraw(value, max = 700, fee = 5) 
        super
    end
end

class SavingsAccount < Account
    def withdraw(value, max = 500, fee = 2)
        super
    end
end