# Write a method to generate the nth Fibonacci number

def fibonacci(n)
  return n if n <= 1
  fibonacci(n-2) + fibonacci(n-1)
end
