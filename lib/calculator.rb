class Calculator
  def self.add(a, b)
    a + b
  end

  def self.subtract(a, b)
    b - a
  end

  def self.multiply(a, b)
    a * b
  end

  def self.divide(a, b)
    Float(a) / Float(b)
  end
end
