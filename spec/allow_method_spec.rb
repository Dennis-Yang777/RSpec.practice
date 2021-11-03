RSpec.describe 'allow method review' do
	it 'can customize return value for methods on doubles' do
		calculator = double
		allow(calculator).to receive(:add).and_return(15)
		expect(calculator.add).to eq 15
	end

	it 'can stub one or more methods on real object' do
		arr = [1, 2, 3]
		allow(arr).to receive(:sum).and_return(10)
		expect(arr.sum).to eq 10

		arr.push(4)
		expect(arr).to eq [1, 2, 3, 4]
	end

	it 'can return multiple retrun values in sequence' do
		mock_arr = double
		# 每次呼叫依序出現不同結果
		allow(mock_arr).to receive(:pop).and_return(:c, :b, nil)
		
		expect(mock_arr.pop).to eq :c
		expect(mock_arr.pop).to eq :b
		expect(mock_arr.pop).to be_nil
		expect(mock_arr.pop).to be_nil
		expect(mock_arr.pop).to be_nil
		expect(mock_arr.pop).to be_nil
		expect(mock_arr.pop).to be_nil
		expect(mock_arr.pop).to be_nil
	end
end