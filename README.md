# Fastsort

Fastsort is a Ruby gem that provides an efficient sorting algorithm for arrays.

## Installation

Add this line to your application's Gemfile:

```ruby
$ gem install 'fastsort'
$ bundle install
```

# Gemfile

gem 'fastsort'

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

sorter = Fastsort::Quicksort.new(arr)

sorter.sort_array

puts "Sorted Array: #{sorter.array}"
```

## Development
After checking out the repo, run bin/setup to install dependencies. You can also run bin/console for an interactive prompt that will allow you to experiment.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/dants0/fastsort.