class QuickSort
  def sort(array, start, last_index)
    return if start >= last_index
    p_index = partiton(array, start, last_index)
    sort(array, start, p_index - 1)
    sort(array, p_index + 1, last_index)
    array
  end

  def partiton(array, start, last_index)
    pivot = array[last_index]
    partition_index = start # set partiton index as starn initially

    while start < last_index
      if array[start] <= pivot
        swap(array, start, partition_index)
        partition_index += 1
      end
      start += 1
    end
    swap(array, partition_index, last_index)
    partition_index
  end

  def swap(array, first, second)
    temp = array[first]
    array[first] = array[second]
    array[second] = temp
  end
end
