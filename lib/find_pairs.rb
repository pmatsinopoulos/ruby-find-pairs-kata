# frozen_string_literals

def find_pairs(int_array:, diff:)
  result = []
  0.upto(int_array.size - 2) do |index|
    (index + 1).upto(int_array.size - 1) do |right_hand_index|
      result.push([int_array[index], int_array[right_hand_index]].sort) if (int_array[index] - int_array[right_hand_index]).abs == diff
    end
  end
  result.sort_by { |a| a[0] }
end
