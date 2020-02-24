class Calculator
    def self.sum(a, b)
      a.to_i + b.to_i
    end
  
    def self.subtr(a, b)
      a.to_i - b.to_i
    end

    def self.multiply(*numbers)
      numbers.split
      result = 1
      numbers.each { |n| result = result * n.to_i }
      result
    end
end