# terminal: rspec --tag @dropdown

describe 'Selection box', :dropdown do 
    it 'specific simple item' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'specific item by find' do 
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list')
        drop.find('option', text: 'Bucky').select_option
        sleep 3
    end

    it 'any item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list')
        drop.all('option').sample.select_option # Sample -> Select a random element
        sleep 4
    end
end
