class Prince 
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

RSpec.describe Prince do
	subject { described_class.new('Bob') }
	let (:louis) { described_class.new('Louis') }

	it 'represents a great person' do
		expect(subject.name).to eq 'Bob'
		expect(louis.name).to eq 'Louis'
	end
end