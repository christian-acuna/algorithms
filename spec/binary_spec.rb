require 'spec_helper'

describe BinarySearch do
  let(:binary) { BinarySearch.new }

  primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
  it 'finds one element in sorted array' do
    expect(binary.search(primes, 3)).to eq 1
  end

  it 'returns false if number is not present in list' do
    expect(binary.search(primes, 100)).to eq false
  end
end
