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
require 'fastsort'

unsorted_array = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
sorted_array = Fastsort.sort(unsorted_array)

puts "Unsorted Array: #{unsorted_array}"
puts "Sorted Array: #{sorted_array}"

Development
After checking out the repo, run bin/setup to install dependencies. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and the created tag, and push the .gem file to rubygems.org.

Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/[dants0]/fastsort.