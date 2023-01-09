#
# Author - Igor A. C. Portela | Copyright(c) 2023. All rights reserved.
# github - @igoracportela
#
# Challenge description
# Write a method fib() that takes an integer nn and returns the nnth Fibonacci ↴ number.
#
# Let's say our Fibonacci series is 0-indexed and starts with 0. So:
#
# fib(0)  # => 0
# fib(1)  # => 1
# fib(2)  # => 1
# fib(3)  # => 2
# fib(4)  # => 3

def fib(n)
  first, second = 0, 1

  (n-1).times do
    first, second = second, first + second
  end

  puts first
end

fib(4)
