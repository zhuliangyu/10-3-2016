# 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.
# Implement question #5 again in Ruby in two ways:
# a. Using a loop
# b. Using recursion
# Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?
require 'benchmark'

def loop(num)
  arr=[]
  for i in 0..num
    if i%2==0
      arr.push(i)

    end
  end
  return arr
end

def recursive(num)

  if num%2==0
    flag="even"
  else
    flag="odd"
  end

  if num==0
    0
  else
    if flag=="even"
       recursive(num-2)+2
    else
       recursive(num-3)+2
    end
  end


end



# benchmark
n = 500
Benchmark.bm do |x|
  x.report('loop     ') { loop(n)   }
  x.report('recursive') { recursive(n) }
end

# result:
# user     system      total        real
# loop       0.000000   0.000000   0.000000 (  0.000080)
# recursive  0.010000   0.000000   0.010000 (  0.000146)



