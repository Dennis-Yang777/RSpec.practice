RSpec.describe 'before & after' do
	before (:example) do
		puts "outer before example(2)"
	end

	after (:example) do
		puts "outer after example(2)"
	end

	before (:context) do
		puts "outer before context(1)"
	end

	after (:context) do
		puts "outer after context(1)"
	end

	it 'outside example' do
		puts 'outside example(x)'
	end

	context 'nested example' do
		before (:example) do
			puts "inner before example(4)"
		end
	
		after (:example) do
			puts "inner after example(4)"
		end

		before (:context) do
			puts "inner before context(3)"
		end
	
		after (:context) do
			puts "inner after context(3)"
		end

		it 'inside examole' do
			puts 'inside example(y)'
		end
	end
	
#############################################

	# before(:context) do 
  #   puts 'A'
  # end
 
  # before(:example) do
  #   puts 'C'
  # end
 
  # after(:example) do
  #   puts 'D'
  # end
 
  # after(:context) do
  #   puts 'B'
  # end
 
  # it 'should compare strings' do
  #   expect('hello').to eq('hello')
  # end
 
  # it('should compare numbers') do
  #   expect(3.14).to eq(3.14)
  # end

#############################################

	# before(:context) do
  #   puts 'K'
  # end
 
  # before(:example) do
  #   puts 'Z'
  # end
 
  # after(:example) do
  #   puts 'E'
  # end
 
  # it 'can multiply' do
  #   expect(3 * 7).to eq(21)
  # end
 
  # it 'can divide' do
  #   expect(40 / 8).to eq(5)
  # end
 
  # context 'with some criteria' do
  #   before(:context) do
  #     puts 'H'
  #   end
 
  #   before(:example) do
  #     puts 'B'
  #   end
 
  #   it 'can subtract' do
  #     expect(10 - 5).to eq(5)
  #   end
 
  #   context 'in this condition' do
  #     before(:example) do
  #       puts 'V'
  #     end
 
  #     it 'can add' do
  #       expect(8 + 6).to eq(14)
  #     end
  #   end
  # end
end