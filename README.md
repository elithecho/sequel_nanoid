# Sequel Nanoid

Sequel Nanoid is a plugin for using [nanoid](https://github.com/radeno/nanoid.rb) in your Sequel models.


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add sequel_nanoid

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install sequel_nanoid

## Usage

```ruby
Sequel.plugin :nanoid, field: :your_field # defaults to nanoid
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sequel_nanoid. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/sequel_nanoid/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SequelNanoid project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sequel_nanoid/blob/main/CODE_OF_CONDUCT.md).
