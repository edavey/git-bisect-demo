require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  describe '::add(a, b)' do
    it 'adds one number to another' do
      expect(Calculator.add(1, 2)).to eq(3)
    end
  end

  describe '::subtract(a, b)' do
    it 'subtract one number from the other' do
      expect(Calculator.subtract(1, 3)).to eq(2)
    end
  end
end
