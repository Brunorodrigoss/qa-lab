describe 'Hovers', :hovers do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    after(:each) do
        sleep 5
    end

    it 'blade hover' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'black panther hover' do
        card = find('img[alt="Pantera Negra"]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'spider man hover' do 
        card = find('img[alt="Homem Aranha"]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end
end