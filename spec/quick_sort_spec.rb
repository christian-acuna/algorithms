require 'spec_helper'

describe QuickSort do
  it 'sorts an array of elements' do
    array = [7, 2, 1, 6, 8, 5, 3, 4]
    sorted_array = [1, 2, 3, 4 ,5, 6, 7, 8]
    expect(QuickSort.new.sort(array, 0, 7)).to eq sorted_array
  end
end
