require "train"

describe Train do

	it_behaves_like 'Container'

	let(:station)           {double :station               }
	let(:person_tapped)     {double :person, tapped?: true }
	let(:person_not_tapped) {double :person, tapped?: false}
	let(:train)             {Train.new                     }

	it "should stop at a station" do
		expect(station).to receive(:dock).with(train)
		train.stop_at(station)
	end

	it "should leave a station" do
		expect(station).to receive(:release).with(train)
		train.leave(station)
	end
	
end