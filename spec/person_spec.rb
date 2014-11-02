require "person"

describe Person do

	let(:person) {Person.new}
	let(:station) {double :station}

	it "when a person is initialized they should not be tapped in at the station" do
		expect(person.tapped?).to be false
	end

	it "can tap into the station" do
		person.tap_in
		expect(person.tapped?).to be true
	end

	it "can tap out of a station" do
		person.tap_in
		person.tap_out
		expect(person.tapped?).to be false
	end

	# it "can move to the station" do
	# 	person.tap_in
	# 	expect(station).to receive(:hold).with(person)
	# 	person.move_on_the(container)
	# end

end