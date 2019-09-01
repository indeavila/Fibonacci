def recursive_fib(n)
  if n < 2
    return n
  else
    recursive_fib(n - 1) + recursive_fib(n - 2)
  end
end
def iterative_fib(n)
  a = 0
  b = 1
  n.times do
    number = a
    a = b
    b = number + b
  end
  return a
end
(0..10).each do |n|
  puts "recursive #{n} = #{recursive_fib(n)}"
  puts "iterative #{n} = #{iterative_fib(n)}"
end
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive") { recursive_fib(num) }
  x.report("iterative") { iterative_fib(num) }
end