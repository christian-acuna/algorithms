require "byebug"
def factorial(n)
  debugger
  if n == 1
    1
  else
    n * factorial(n - 1)
  end
end

p factorial(5)
# p factorial(4)
