class Burger
	def eat
		'Yummy'
	end

	def discard
		'Yuck'
	end

	def purchase(number)
		"I just purchased #{number} burgers"
	end
end

class Sandwitch
	def eat; end
	def discard; end
	def purchase(number); end
end

RSpec.describe Burger do
	it 'confirms that an object can respond to a method' do
		expect(subject).to respond_to(:eat)
		expect(subject).to respond_to(:eat, :discard, :purchase)
	end

	it 'confirms an object can respond to a method with arguments' do
		expect(subject).to respond_to(:purchase)
		expect(subject).to respond_to(:purchase).with(1).arguments
	end

	it { is_expected.to respond_to(:purchase, :discard) }
	it { is_expected.to respond_to(:purchase).with(1).arguments }
end