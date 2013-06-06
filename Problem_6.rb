#The sum of the squares of the first ten natural numbers is,

#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural 
#numbers and the square of the sum is 3025  385 = 2640.

#Find the difference between the sum of the squares of the first one hundred 
#natural numbers and the square of the sum.
require 'pry'
class SumOfSquares

  def sum_the_squares(first_num, last_num)
    @sum_of_squares = 0
    for n in first_num..last_num do
      @sum_of_squares += (n*n)
    end
    puts @sum_of_squares
    return @sum_of_squares
  end

  def square_the_sum(first_num, last_num)
    @square_of_sums = 0
    for n in first_num..last_num do
      @square_of_sums += n
    end
      @square_of_sums = @square_of_sums * @square_of_sums
      puts @square_of_sums
      return @square_of_sums
  end

  def difference(sum_of_squares, square_of_sums)
    binding.pry
    @difference = sum_of_squares - square_of_sums
    puts @difference
  end
end

s = SumOfSquares.new
a = s.sum_the_squares(1,100)
b = s.square_the_sum(1,100)
s.difference(b, a)

