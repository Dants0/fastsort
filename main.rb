require_relative "./lib/fastsort"

arr = [1, 100, 20, 30, 12, 7, 6, 10]

bucket_size = 2

sorter_001 = Fastsort::Quicksort.new(arr)
sorter_002 = Fastsort::Mergesort.new(arr)
sorter_003 = Fastsort::Sonicsort.new(arr)
sorter_004 = Fastsort::SelectionSort.new(arr)
sorter_005 = Fastsort::BubbleSort.new(arr)
sorter_006 = Fastsort::BucketSort.new(arr, bucket_size)
sorter_007 = Fastsort::InsertionSort.new(arr)

# sorter_001.sort_array
# sorter_002.sort_array
# sorter_003.sort_quick_and_merge
# sorter_004.sort_array
# sorter_005.sort_array
sorter_006.sort_array
sorter_007.sort_array

# puts "Sorted Array Quicksort: #{sorter_001.array}"
# puts "Sorted Array Mergesort: #{sorter_002.array}"
# puts "Sorted Array Sonicsort: #{sorter_003.array}"
# puts "Sorted Array SelectionSort: #{sorter_004.array}"
# puts "Sorted Array BubbleSort: #{sorter_005.array}"
puts "Sorted Array BucketSort: #{sorter_006.array}"
puts "Sorted Array InsertionSort: #{sorter_007.array}"
