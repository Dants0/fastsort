require_relative "./lib/fastsort"

arr = [
  75, 79, 21, 30, 12, 85, 24, 6, 66, 69,
  92, 98, 18, 57, 40, 71, 92, 14, 1, 79,
  15, 21, 55, 83, 45, 34, 25, 67, 9, 75,
  83, 75, 99, 10, 41, 63, 79, 22, 80, 7,
  38, 87, 31, 93, 60, 53, 39, 59, 67, 97,
]

sorter_001 = Fastsort::Quicksort.new(arr)
sorter_002 = Fastsort::Mergesort.new(arr)

sorter_001.sort_array
sorter_002.sort_array

# puts "Sorted Array: #{sorter_001.array}"
puts "Sorted Array: #{sorter_002.array}"
