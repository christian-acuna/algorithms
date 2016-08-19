require 'spec_helper'

describe BubbleSort do
  let(:bubble) { BubbleSort.new  }

  it 'sorts a one element array' do
    expect(bubble.sort([1])).to eq [1]
  end

  it 'sorts a two element array' do
    expect(bubble.sort([2, 1])).to eq [1, 2]
  end

  it 'sorts a three element array' do
    expect(bubble.sort([3, 2, 1])).to eq [1, 2, 3]
  end

  it 'sorts a five element array' do
    expect(bubble.sort([5, 1, 4, 2, 8])).to eq [1, 2, 4, 5, 8]
  end
end
