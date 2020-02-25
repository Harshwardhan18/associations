class Calculator
    def self.sum(a, b)
      a.to_i + b.to_i
    end
  
    def self.subtr(a, b)
      a.to_i - b.to_i
    end

    def self.multiply(*numbers)
      result = 1
      numbers.each { |n| result = result * n.to_i }
      result
    end

    def self.mean(*numbers)
      result = 0
      len = numbers.length
      puts len
      numbers.each { |n| result = result + n.to_i }
      result = result.to_f/len
      result
    end

    def self.median(*numbers)
      result = 0
      len = numbers.length
      result = (len+1)/2
      result
    end
end