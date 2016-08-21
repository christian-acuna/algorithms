require 'spec_helper'

describe MergeSort do

  context '#merge' do
    let(:merge_sort) { MergeSort.new }
    it 'it merges two arrays' do
      array = [2, 4, 1, 6, 8, 5, 3, 7]
      right_array = [1, 2, 4, 6]
      left_array = [3, 5, 7, 8]
      merged = [1, 2, 3, 4, 5, 6, 7, 8]
      expect(merge_sort.merge(array, right_array, left_array)).to eq merged
    end
  end

  context '#merge_sort' do
    let(:merge_sort) { MergeSort.new }
    it 'sorts an array of eight elements' do
      array = [2, 4, 1, 6, 8, 5, 3, 7]
      merged = [1, 2, 3, 4, 5, 6, 7, 8]
      expect(merge_sort.merge_sort(array)).to eq merged
    end
  end

end
