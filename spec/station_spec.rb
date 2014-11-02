require "station"

describe Station do
	
	let(:station)           {Station.new                   }
	let(:person_tapped)     {double :person, tapped?: true }
	let(:person_not_tapped) {double :person, tapped?: false}
	let(:train)             {double :train                 }

	it_behaves_like 'Container'

	it "should hold a train" do
		station.dock(train)
		expect(station.trains).to eq([train])
	end

	it "should release a train" do
		station.dock(train)
		station.move(train)
		expect(station.trains.count).to eq(0)
	end
end