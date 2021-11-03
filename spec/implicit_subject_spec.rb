RSpec.describe Hash do
	it 'should start off empty' do
		expect(subject.length).to eq 0
		subject[:key] = 'hello'
		expect(subject.length).to eq 1
	end

	it 'is isolated beetween examples' do
		expect(subject.length).to eq 0
	end
end