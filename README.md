# Get::Version

Sinatra application for mounting to the rails projects for quick access to the
version.txt file based on

    git describe --tags

## Installation

Add this line to your application's Gemfile:

    gem 'get-version'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install get-version

## Usage

    # config/routes.rb
    mount '/' => GetVersion::Web

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
