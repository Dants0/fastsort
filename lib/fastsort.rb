# frozen_string_literal: true

module Fastsort
  class Error < StandardError; end

  class Quicksort
    attr_accessor :array

    def initialize(array)
      @array = array
    end

    def sort_array(from_idx = 0, to_idx = array.length - 1)
      if from_idx < to_idx
        pivot_idx = partition_and_get_pivot_idx(from_idx, to_idx)
        sort_array(from_idx, pivot_idx - 1)
        sort_array(pivot_idx + 1, to_idx)
      end
      self
    end

    private

    def partition_and_get_pivot_idx(from_idx, to_idx)
      pivot_value = array[to_idx]
      pointer_a_idx = pointer_b_idx = from_idx

      while pointer_a_idx < to_idx
        if array[pointer_a_idx] <= pivot_value
          swap_values(pointer_a_idx, pointer_b_idx)
          pointer_b_idx += 1
        end
        pointer_a_idx += 1
      end
      swap_values(pointer_b_idx, to_idx)
      pointer_b_idx
    end

    def swap_values(idx_a, idx_b)
      array[idx_a], array[idx_b] = array[idx_b], array[idx_a]
    end
  end
end
