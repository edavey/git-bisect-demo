class Calculator
  def self.add(*args)
    args.inject do |product, number|
      product + number
    end
  end

  def self.subtract(a, b)
    b - a
  end

  def self.multiply(*args)
    args.inject do |product, number|
      product * number
    end
  end

  def self.divide(a, b)
    raise ZeroDivisionError, 'You can\'t divide by zero.' if b.to_s == '0'

    Float(a) / Float(b)
  end
end
