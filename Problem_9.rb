#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

class Pythagorean
 def find_triplet(a,b,c)
  num_a = a
  num_b = b 
  num_c = c

  while (num_a + num_b + num_c) != 1000
    num_a += 1
 end

 def find product(a,b,c)

 end


  end