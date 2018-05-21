capistrano-mod-group
=====================

Capistrano v3.* extension to change the group of shared folders/files after deployment

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.3.0'
gem 'capistrano-mod-group'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-mod-group

## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/mod_group'
```

## Example

```ruby
set :mod_group, 'apache'
set :mod_directories, [
    'web/cache'
]
```

## License

Released under the [MIT license](LICENSE)
