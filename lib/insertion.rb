class Insertion
  def non_decreasing(array)
    current_element_index = 1
    while current_element_index < array.length
      key = array[current_element_index]
      i = current_element_index - 1
      while i >= 0 && array[i] > key
        array[i + 1] = array[i]
        i -= 1
      end
      array[i + 1] = key
      current_element_index += 1
    end
    array
  end

  def nonincreasing(array)
    current_element_index = 1
    while current_element_index < array.length
      key = array[current_element_index]
      i = current_element_index - 1
      while i >= 0 && array[i] < key
        array[i + 1] = array[i]
        i -= 1
      end
      array[i + 1] = key
      current_element_index += 1
    end
    array
  end
end
