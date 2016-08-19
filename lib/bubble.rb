require "byebug"
class BubbleSort
  def sort(array)
    iterations = 0
    length_minus_one = array.length - 1
    while iterations < length_minus_one
      index = 0
      while index < length_minus_one
        first_element = array[index]
        second_element = array[index + 1]
        if first_element > second_element
          array[index] = second_element
          array[index + 1] = first_element
        end
        index += 1
      end
      iterations += 1
    end
    array
  end
end
