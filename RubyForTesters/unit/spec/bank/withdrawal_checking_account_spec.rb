require_relative '../../app/bank'

describe 'Checking Account' do
    
    describe 'Withdrawal' do
        context 'When the value is positive' do
            before(:all) do
                @checking_account = CheckingAccount.new(1000.00)
                @checking_account.withdraw(200)
            end
            it 'then update balance' do
                expect(@checking_account.balance).to eql 795.00
            end
        end

        context 'When the balance is zero' do
            before(:all) do
                @checking_account = CheckingAccount.new(0.0)
                @message = @checking_account.withdraw(100)
            end
            it 'then show message' do
                expect(@message).to eql 'Insufficient balance to withdraw :('
            end
            it 'and final balance with zeros' do
                expect(@checking_account.balance).to eql 0.0
            end
        end

        context 'When the balance is insufficient' do
            before(:all) do
                @checking_account = CheckingAccount.new(500)
                @message = @checking_account.withdraw(501)
            end
            it 'then show message' do
                expect(@message).to eql 'Insufficient balance to withdraw :('
            end
            it 'and final balance with 500' do
                expect(@checking_account.balance).to eql 500
            end
        end

        context 'When Draw Limit' do
            before(:all) do
                @checking_account = CheckingAccount.new(1000)
                @message = @checking_account.withdraw(701)
            end
            it 'Then show message' do
                expect(@message).to eql 'Maximum withdrawal limit is $ 700'
            end
            it 'and the balance with 1000' do
                expect(@checking_account.balance).to eql 1000
            end
        end
    end
end