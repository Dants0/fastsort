# Fastsort

Fastsort is a Ruby gem that provides an efficient sorting algorithm for arrays.

## Installation

Add this line to your application's Gemfile:

```ruby
$ gem install 'fastsort'
$ bundle install
```

## TODO
Add more efficient sorting algorithms for arrays and arrays of objects...


## Example usage

```bash
require 'fastsort'

arr = [
  75, 79, 21, 30, 12, 85, 24, 6, 66, 69,
  92, 98, 18, 57, 40, 71, 92, 14, 1, 79,
  15, 21, 55, 83, 45, 34, 25, 67, 9, 75,
  83, 75, 99, 10, 41, 63, 79, 22, 80, 7,
  38, 87, 31, 93, 60, 53, 39, 59, 67, 97
]

bucket_size = 10

sorter001 = Fastsort::Quicksort.new(arr)
sorter002 = Fastsort::Mergesort.new(arr)
sorter003 = Fastsort::Sonicsort.new(arr)
sorter004 = Fastsort::SelectionSort.new(arr)
sorter004 = Fastsort::BubbleSort.new(arr)
sorter006 = Fastsort::BucketSort.new(arr, bucket_size)
sorter007 = Fastsort::InsertionSort.new(arr)

sorter001.sort_array
sorter002.sort_array
sorter003.sort_quick_and_merge
sorter004.sort_array
sorter005.sort_array
sorter006.sort_array
sorter007.sort_array

puts "Sorted Array Quicksort: #{sorter_001.array}"
puts "Sorted Array Mergesort: #{sorter_002.array}"
puts "Sorted Array Sonicsort: #{sorter_003.array}"
puts "Sorted Array SelectionSort: #{sorter_004.array}"
puts "Sorted Array BubbleSort: #{sorter_005.array}"
puts "Sorted Array BucketSort: #{sorter_006.array}"
puts "Sorted Array InsertionSort: #{sorter_007.array}"




```

## Development
After checking out the repo, run bin/setup to install dependencies. You can also run bin/console for an interactive prompt that will allow you to experiment.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/dants0/fastsort.