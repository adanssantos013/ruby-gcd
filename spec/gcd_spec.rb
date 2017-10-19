RSpec.describe Gcd do
  it "has a version number" do
    expect(Gcd::VERSION).not_to be nil
  end

  it 'sort number should return the numbers as [largest, smallest]' do
    expect(Gcd.new.sort_numbers(12, 30)).to eq([30, 12])
  end

  it 'should return 4 for 8 and 12' do
    expect(Gcd.new.calculate(8, 12)).to eq(4)
  end

  it 'should return 4 for 8 and 12 recurse' do
    expect(Gcd.new.calculate_recurse(8, 12)).to eq(4)
  end

  it 'should return 6 for 54 and 24' do
    expect(Gcd.new.calculate(54, 24)).to eq(6)
  end

  it 'should return 6 for 54 and 24 recurse' do
    expect(Gcd.new.calculate_recurse(54, 24)).to eq(6)
  end

end
