#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

class Multiples

  def find_numbers(number1,number2,top_range)
    @subset = []
    remaining = top_range
    top_range.times do |num|
      num = remaining
      if remaining % number1 == 0
        @subset << num
        remaining -= 1
      elsif remaining % number2 == 0
        @subset << num
        remaining -= 1
      else
        remaining -= 1
      end
      puts @subset
    end
    return @subset
  end

    def score(subset)
      total = 0
      @subset.each {|num| total += num}
      puts total
      return total

    end
end

m = Multiples.new
m.find_numbers(3,5,999)
m.score(@subset)