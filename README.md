# CourseFinder

Welcome to your CourseFinder! The CourseFinder app provides a basic overview of a degree program, lists courses, and allows users to select courses to view the full course listing. The stock version uses the Finance department, and all information is sourced from the university bulletin. All programs in the bulletin use the same html and stylesheets, so the urls and code can easily be updated to fit most programs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'course_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install course_finder

## Usage

The app is fairly simple. When a user runs the program, the will receive a welcome message, an introduction to the program, and a list of courses. The user than can type the listed number for the course to view more information. If the user types "menu", they will return to the list. One can exit the program by typing "exit".

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'dmcgrann'/course_finder.
