describe 'Radio button selection', :radio do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    after(:each) do
        sleep 3
    end

    it 'select by id' do
        choose('cap')
    end

    it 'select by value' do
        find('input[value=iron-man]').click
    end
end