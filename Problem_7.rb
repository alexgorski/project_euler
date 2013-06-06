#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?
require 'pry'
class Prime

 def add_primes(num=3, last_prime=2, num_of_primes=2)
  @prime = last_prime
  @num_of_primes = num_of_primes
  number = num
  factors = 0
  while @num_of_primes <= 10003
    if number.odd?
      for n in 2..(number/2) do
        factors += 1 if (number % n) < 1
      end
      @prime = number if factors < 1
      @num_of_primes += 1 if factors < 1
      number += 1
      factors = 0
    else
      number +=1
    end

    puts number
    puts @prime
    puts @num_of_primes
    #binding.pry
  end
  
  
 end
end

p = Prime.new
p.add_primes