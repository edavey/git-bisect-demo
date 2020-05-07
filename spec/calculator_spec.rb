require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  describe '::add(a, b)' do
    it 'adds one number to another' do
      expect(Calculator.add(1, 2)).to eq(3)
    end

    it 'adds one float to another' do
      expect(Calculator.add(1.123, 2.234).round(4)).to eq(3.357)
    end
  end

  describe '::subtract(a, b)' do
    it 'subtract one number from the other' do
      expect(Calculator.subtract(1, 3)).to eq(2)
    end

    it 'subtracts floats too' do
      expect(Calculator.subtract(1.123, 3.345).round(4)).to eq(2.222)
    end
  end

  describe '::multiply(a, b)' do
    it 'multiplies the two numbers' do
      expect(Calculator.multiply(2, 3)).to eq(6)
    end
  end

  describe '::divide(a, b)' do
    it 'divides the two numbers' do
      expect(Calculator.divide(10, 3).round(4)).to eq(3.3333)
    end

    it 'prints an error message if we attempt the impossible' do
      expect { Calculator.divide(10, 0) }.to raise_error(
        ZeroDivisionError, 'You can\'t divide by zero.'
      )
    end
  end
end
