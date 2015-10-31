# Idcon

svg (and png) Identicon Generator

![example](https://cdn.rawgit.com/l3kn/idcon/master/examples/idcon.svg)
![example](https://cdn.rawgit.com/l3kn/idcon/master/examples/hodor.svg)
![example](https://cdn.rawgit.com/l3kn/idcon/master/examples/foobar.svg)
![example](https://cdn.rawgit.com/l3kn/idcon/master/examples/yolo.svg)
![example](https://cdn.rawgit.com/l3kn/idcon/master/examples/swag.svg)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'idcon'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install idcon

## Usage

```ruby
require 'idcon'

Idcon.svg("foobar")
Idcon.svg("foobar", dimension: 7) # currently only [3,5,7] work, default is 5
Idcon.svg("foobar", size: 20)     # size of each square in pixels, default is 10
# => "<svg ...> ... <svg/>"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/l3kn/idcon/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
