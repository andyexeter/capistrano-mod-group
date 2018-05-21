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

Tarballs are unpacked during `deploy:updating` and created during `deploy:finishing` as part of Capistrano's default deploy

Configurable options:

```ruby
set :mod_group, []                       # default
set :tar_location, "tarballs"            # default
set :tar_unpack_flags, "xf"              # default
set :tar_create_flags, "cf"              # default
```

## Example
```ruby
# Create and unpack tarballs for these directories between releases
set :mod_group, ['vendor', 'node_modules', 'web/assets']
```

## License

Released under the [MIT license](LICENSE)
