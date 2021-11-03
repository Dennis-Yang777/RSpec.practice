RSpec.shared_context 'common' do
	before do
		@foods = []
	end

	def some_method
		5
	end

	let (:varialbe) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
	include_context 'common'

	it 'can use outside instance variables' do
		expect(@foods.length).to eq 0
		@foods << 'burger'
		expect(@foods.length).to eq 1
	end

	it 'can reuse instance across different examples' do
		expect(@foods.length).to eq 0
	end

	it 'can use shared methods' do
		expect(some_method).to eq 5
	end
end

RSpec.describe 'second example in different file' do
	include_context 'common'

	it 'can use shared let variables' do
		expect(varialbe).to eq [1, 2, 3]
	end
end