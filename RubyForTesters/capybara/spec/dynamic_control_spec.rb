describe 'Dynamic Control', :dc do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end

    it 'enable the input' do
        res = page.has_field? 'movie', disabled: true
        click_button('Habilita')
    end
end