#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class SmallMultiple

  def make_set(first,last)
    @total = 1
    @set = []
    for n in first..last do
      @set << n
      if @total % n != 0
        @total = @total * n
        @total = reduce_total(@total, @set)
        puts @total
        puts @set
        
      else
        puts "#{n} is already a multiple"
        if n == 20
          @total = reduce_final(@total, @set, n)
          puts @total
        end
      end
    end
  end

  def reduce_total(total,set)
    if set.collect{|s| s if ((total/2) % s) == 0}.compact.size == set.size
      @total = total / 2
      puts "reduced total to #{@total}"
      self.reduce_total(@total,set)
    else
      return @total = total
    end
  end

  def reduce_final(total,set,num)
    if set.collect{|s| s if ((total/num) % s) == 0}.compact.size == set.size
      @total = total / num
      puts "reduced total to #{@total}"
      self.reduce_final(@total,set, num)
    else
      num = num - 1
      if num == 1
        return @total
      else
        self.reduce_final(@total,set, num)
      end
    end
  end
end


s = SmallMultiple.new
s.make_set(1,20)