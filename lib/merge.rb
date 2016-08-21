class MergeSort

  def merge_sort(array)
    array_length = array.length
    puts "length: #{array_length}"
    if array_length < 2
      puts "sorted"
      p array
    else
      middle = array_length / 2
      puts "Middle: #{middle}"
      left = array[0...middle]
      puts "L: #{left}"
      right = array[middle..-1]
      puts "R: #{right}"
      merge_sort(left)
      merge_sort(right)
      puts "Sorted L: #{left}"
      puts "Sorted R: #{right}"
      p merge(array, right, left)
    end
  end

  def merge(array, right_array, left_array)
    right_length = right_array.length
    left_length = left_array.length
    i = 0
    j = 0
    k = 0
    # i and j are both valid indices
    while i < left_length && j < right_length
      if left_array[i] <= right_array[j]
        array[k] = left_array[i]
        i += 1
      else
        array[k] = right_array[j]
        j += 1
      end
      k += 1
    end

    while i < left_length
      array[k] = left_array[i]
      i += 1
      k += 1
    end

    while j < right_length
      array[k] = right_array[j]
      j += 1
      k += 1
    end
    array
  end
end
