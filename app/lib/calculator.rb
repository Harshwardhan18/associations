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

    def self.mode(*num)
      #assigning values 
      l = num[0].to_i
      f1 = num[1].to_i
      f0 = num[2].to_i
      f2 = num[3].to_i
      h = num[4].to_i
      #constructing formula
      p = (f1-f0)
      g= 2*f1-f0-f2
      #calculate mode
      result = (p.to_f/g)*h+l
      result
    end
end