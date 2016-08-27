def sum(n)
  if n == 0
    0
  else
    n + sum(n - 1)
  end
end

def sum_array(array)
  if array.length == 1
    return array.first
  else
    array.first + sum_array(array[1..-1])
  end
end

def items_in_list(array)
  if array.length == 1
    return 1
  else
    1 + items_in_list(array[1..-1])
  end
end

# p sum(5)
# p sum(4)
# p sum(3)
# p sum_array([2, 4, 6])
p items_in_list(['a', 'b', 'c', 'd'])
