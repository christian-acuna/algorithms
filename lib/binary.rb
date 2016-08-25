class BinarySearch
  def search(array, target)
    min = 0
    max = array.length - 1

    until min > max
      mid = (min + max) / 2
      guess = array[mid]
      if guess == target
        return mid
      elsif guess < target
        min = mid + 1
      elsif guess > target
        max = mid - 1
      end
    end
    false
  end
end

# primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
# binary = BinarySearch.new
# p binary.search(primes, 67)
# p binary.search(primes, 100)
# p binary.search(primes, 73)
# p binary.search(primes, 3)
