require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  describe '::add(a, b)' do
    it 'adds one number to another' do
      expect(Calculator.add(1, 2)).to eq(3)
    end
  end
end
