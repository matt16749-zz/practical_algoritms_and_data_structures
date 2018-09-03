# Problem:
# Calculate the sum of the first n numbers. Method should take n parameter and return a sum of the numbers

def sum_of(n)
  total = 0
  while n > 0
    total += n
    n -= 1
  end
  return total
end

puts sum_of(3) == 6
puts sum_of(4) == 10
