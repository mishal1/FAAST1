require "./lib/container.rb"

shared_examples "Container" do
	
	let(:station)           {described_class.new           }
	let(:person_tapped)     {double :person, tapped?: true }
	let(:person_not_tapped) {double :person, tapped?: false}
	let(:train)             {double :train                 }

	it "should be empty when initialized" do
		expect(station).to be_empty
	end

	it "should have a person enter it" do
		station.hold(person_tapped)
		expect(station.people).to eq([person_tapped])
	end

	it "should have a person leave the station" do
		station.hold(person_tapped)
		station.release(person_tapped)
		expect(station.people.count).to eq(0)
	end
end