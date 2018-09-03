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
