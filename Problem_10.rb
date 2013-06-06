#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

require 'pry'
class Prime

  def add_primes(num=4, last_prime=3, num_of_primes=6)
    @prime = last_prime
    @total_of_primes = num_of_primes
    number = num
    factors = 0
    while number < 2000000
      if number.odd?
        n=3
        while (factors == 0) && (n < (number/2)) do
          factors += 1 if (number % n) < 1
          n += 1
          
        end 
        @prime = number if factors < 1
        @total_of_primes += number if factors < 1
        puts "added #{number} to total of primes" if factors < 1
        number += 1
        factors = 0
        
      else
        number +=1
      end

      puts number
      puts @prime
      puts "total primes: #{@total_of_primes}"
      #binding.pry
    end
    
    
  end
end

p = Prime.new
p.add_primes