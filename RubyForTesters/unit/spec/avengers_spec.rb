class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

describe AvengersHeadQuarter do
    it 'Should add a avenger' do
        hq = AvengersHeadQuarter.new
        hq.put('Spiderman')
        
        expect(hq.list).to eql ['Spiderman']
    end

    it 'Should add an avengers list' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        
        expect(hq.list).to include 'Hulk' 
    end

    it 'Should Check size avengers list' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        res = hq.list.size > 0
        
        expect(res).to be true
        expect(hq.list.size).to eql 3
    end

    it 'Thor shoud be first on the list' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman shoud be last on the list' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'Should contais the last name' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Bruno/)
    end
end