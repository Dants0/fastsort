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

  class Mergesort
    attr_accessor :array

    def initialize(array)
      @array = array
    end

    def sort_array
      return array if array.length <= 1

      middle = array.length / 2
      left_half = array[0...middle]
      right_half = array[middle..-1]

      left_half = Mergesort.new(left_half).sort_array
      right_half = Mergesort.new(right_half).sort_array

      merge(left_half, right_half)
    end

    def merge(left, right)
      result = []
      left_idx = right_idx = 0

      while left_idx < left.length && right_idx < right.length
        if left[left_idx] < right[right_idx]
          result << left[left_idx]
          left_idx += 1
        else
          result << right[right_idx]
          right_idx += 1
        end
      end

      result.concat(left[left_idx..-1]) if left_idx < left.length
      result.concat(right[right_idx..-1]) if right_idx < right.length

      result
    end
  end

  class Sonicsort
    attr_accessor :array

    def initialize(array)
      raise ArgumentError, 'Array cannot be nil' if array.nil?
      @array = array
    end

    def sort_quick_and_merge
      raise ArgumentError, 'Array cannot be empty' if array.empty?
      sort_and_merge(0, array.length - 1)
      self
    end

    private

    def sort_and_merge(from_idx, to_idx)
      return if from_idx >= to_idx

      # Use Quicksort before Mergesort
      pivot_idx = quicksort_partition(from_idx, to_idx)

      # Continue with Mergesort on both sides of the pivot
      sort_and_merge(from_idx, pivot_idx - 1)
      sort_and_merge(pivot_idx + 1, to_idx)
    end

    def quicksort_partition(from_idx, to_idx)
      pivot_idx = array[to_idx]
      pointer_a_idx = pointer_b_idx = from_idx

      while pointer_a_idx < to_idx
        if array[pointer_a_idx] <= pivot_idx
          swap_values(pointer_a_idx, pointer_b_idx)
          pointer_b_idx += 1
        end
        pointer_a_idx += 1
      end

      swap_values(pointer_b_idx, to_idx)
      pointer_b_idx
    end

    def swap_values(let_idx_a, let_idx_b)
      array[let_idx_a], array[let_idx_b] = array[let_idx_b], array[let_idx_a]
    end
  end
end
