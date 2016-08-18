
def binary(array, target)
  min = 0
  max = 24

  until min > max
    guess = (min + max) / 2
    return guess if array[guess] == target
    if array[guess] < target
      min = guess + 1
    elsif array[guess] > target
      max = guess - 1
    end
  end
  false
end

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p binary(primes, 67)
p binary(primes, 100)
p binary(primes, 73)
p binary(primes, 3)
