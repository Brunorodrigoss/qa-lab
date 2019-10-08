describe 'Check box selection', :checkbox do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    after(:each) do
        sleep 3
    end

    it 'check an option' do
        check('thor')
    end

    it 'uncheck an option' do
        uncheck('antman')
    end

    it 'check an option by value' do
        find('input[value=cap]').set(true)
    end

    it 'uncheck an option by value' do
        find('input[value=guardians]').set(false)
    end
end