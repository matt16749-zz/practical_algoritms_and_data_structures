# Problem:
# Calculate the sum of the first n numbers. Method should take n parameter and return a sum of the numbers

def time_method(method, arg)
  beginning_time = Time.now
  self.send(method, arg)
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
end

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

time_method(:sum_of, 1)
time_method(:sum_of, 10)
time_method(:sum_of, 100)
time_method(:sum_of, 1000)
time_method(:sum_of, 10000)
=begin
  #sum_of is not efficient. O(n). There is a faster way without looping.
  Hint: Try summing numbers 1 - 6 by grouping 1 and 6, 2 and 5, 3 and 4. Notice there are 3 pairs each of which total 7.
=end

def faster_sum_of(n, total=0)
  if n > 0
    if n.even?
      total = (n / 2) * (n + 1)
    else
      total = n * (n / 2.to_f).ceil
    end
  end
  total
end

puts faster_sum_of(6) == 21
puts faster_sum_of(4) == 10
puts faster_sum_of(2) == 3
puts faster_sum_of(7) == 28
puts faster_sum_of(5) == 15
puts faster_sum_of(3) == 6

time_method(:faster_sum_of, 1)
time_method(:faster_sum_of, 10)
time_method(:faster_sum_of, 100)
time_method(:faster_sum_of, 1000)
time_method(:faster_sum_of, 10000)
=begin
  #faster_sum_of is O(1)
=end
