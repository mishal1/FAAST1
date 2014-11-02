require "train"

describe Train do

	it_behaves_like 'Container'

	let(:station)           {double :station               }
	let(:person_tapped)     {double :person, tapped?: true }
	let(:person_not_tapped) {double :person, tapped?: false}
	let(:train)             {Train.new                     }
	let(:train1)            {Train.new(5)                  }

	it "should stop at a station" do
		expect(station).to receive(:dock).with(train)
		train.pick_up_from(station)
	end

	it "should leave a station" do
		expect(station).to receive(:release).with(train)
		train.leave_from(station)
	end

	it "should have coaches" do
		expect(train1.coaches).to eq(5)
	end
	
	it "should have a max of 40 people per coach" do
		expect(train1.capacity).to eq(40*5)
	end
	
end