#A palindromic number reads the same both ways. 
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

#Find the largest palindrome made from the product of two 3-digit numbers.


class Palindrone
  def backwards(num1,num2)
    product = num1 * num2
    if product.to_s.reverse == product.to_s
       puts product
       puts num1
       puts num2
       num2 -= 1
       num1 = 999
       self.backwards(num1,num2)
    else
      num1 -= 1
      if num1 == 0
        num2 -= 1
        num1 = 999
        self.backwards(num1,num2)
      else
        self.backwards(num1,num2)
      end
    end
  end
end

p = Palindrone.new
p.backwards(999,999)