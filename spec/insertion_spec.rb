require 'spec_helper'

describe Insertion do
  context 'non-decreasing' do
    let(:insert) { Insertion.new }
    it 'sorts a one element array' do
      expect(insert.non_decreasing([1])).to eq [1]
    end

    it 'sorts a two element array' do
      expect(insert.non_decreasing([2, 1])).to eq [1, 2]
    end

    it 'sorts a three element array' do
      expect(insert.non_decreasing([3, 2, 1])).to eq [1, 2, 3]
    end

    it 'sorts a five element array' do
      expect(insert.non_decreasing([5, 1, 4, 2, 8])).to eq [1, 2, 4, 5, 8]
    end

    it 'sorts a six element array' do
      expect(insert.non_decreasing([5, 2, 4, 6, 1, 3])).to eq [1, 2, 3, 4, 5, 6]
    end
  end

  context 'nonincreasing' do
    let(:insert) { Insertion.new }
    it 'sorts a one element array' do
      expect(insert.nonincreasing([1])).to eq [1]
    end

    it 'sorts a two element array' do
      expect(insert.nonincreasing([1, 2])).to eq [2, 1]
    end

    it 'sorts a three element array' do
      expect(insert.nonincreasing([1, 2, 3])).to eq [3, 2, 1]
    end

    it 'sorts a five element array' do
      expect(insert.nonincreasing([5, 1, 4, 2, 8])).to eq [8, 5, 4, 2, 1]
    end

    it 'sorts a six element array' do
      expect(insert.nonincreasing([5, 2, 4, 6, 1, 3])).to eq [6, 5, 4, 3, 2, 1]
    end
  end
end
