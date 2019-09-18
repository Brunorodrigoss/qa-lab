
describe 'Forms' do
    it 'sucessfuly login' do
        login('stark', 'jarvis!')

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!' # Ruby option (include)
        # OR
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' # Capybara option (have_content)
    end

    it 'wrong password' do
        login('stark', 'wrongPass')

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Senha é invalida!'
        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'user not register' do
        login('Bruno', 'jarvis!')

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end

def login(user, password)
    visit 'https://training-wheels-protocol.herokuapp.com/login'
        
    fill_in 'username', with: user
    fill_in 'password', with: password

    click_button 'Login'
end