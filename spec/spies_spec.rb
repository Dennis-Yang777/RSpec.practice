RSpec.describe 'spies' do
	# 直接模擬，不用定義方法
	let(:animal) { spy('animal') }

	it 'confrims that a message has been received' do
		animal.eat_food
		expect(animal).to have_received(:eat_food)
		expect(animal).not_to have_received(:eat_human)
	end

	it 'resets between examples' do
		expect(animal).not_to have_received(:eat_food)
	end

	it 'retains the same functionality of a regular double' do
		animal.eat_food
		animal.eat_food
		animal.eat_food('burger')
		expect(animal).to have_received(:eat_food).exactly(3).times
		expect(animal).to have_received(:eat_food).at_least(2).times
		expect(animal).to have_received(:eat_food).with('burger')
		expect(animal).to have_received(:eat_food).once.with('burger')
	end
end