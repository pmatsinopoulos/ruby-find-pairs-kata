# frozen_string_literal: true

require 'benchmark'

RSpec.describe 'find pairs' do
  {
    { array: [1, 7, 5, 9, 2, 12, 3], diff: 2 } => [[1, 3], [3, 5], [5, 7], [7, 9]]
  }.each do |input, expected_output|
    context "when input array is #{input[:array]} and diff is #{input[:diff]}" do
      it "returns the integers array #{expected_output} with pairs having difference #{input[:diff]}" do
        expect(find_pairs(int_array: input[:array], diff: input[:diff])).to eq(expected_output)
      end

      it 'needs to be fast' do
        realtime = Benchmark.realtime do
          find_pairs(int_array: input[:array], diff: input[:diff])
        end
        expect(realtime).to be < 2.1e-5
      end
    end
  end
end
