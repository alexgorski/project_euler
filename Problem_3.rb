#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
require 'pry'
require 'prime'
class Prime
  def collect_primes_for(number, current_count=3, factors=[1])
    @factors = factors
    count = current_count
    #binding.pry
    if number % count == 0 && number.prime?
      @factors << count
      count += 2
      self.collect_primes_for(number, count, @factors)
    else
      count += 2
      self.collect_primes_for(number, count, @factors)
    end
    puts @factors.last
    puts @factors.size
    return @factors

  end

  def find_primes_first(max_num, primes=[1,2], current_number=3)
    @primes = primes
    number = current_number
    if number*2 < max_num
      if @primes.collect{|p| p if (number % p) == 0}.compact.size < 2
        #binding.pry
        @primes << number if (max_num % number) == 0
        number += 2
        puts @primes.last
        puts number
        self.find_primes_first(max_num, @primes, number)
      else
        number += 2
        self.find_primes_first(max_num, @primes, number)
      end
    else
      puts @primes.size
      return @primes
    end
  end
end

p = Prime.new
p.collect_primes_for(600851475143)
