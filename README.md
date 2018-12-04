# RailsShow
Generates a controller and view that allows visitors to your app to see the app's code.

Run 'rails g view_source' to generate a source controller. This will display the app's file system and files on the /source path. Good for showing off the code you made. Bad for keeping secrets! It's a generator instead of adding it automatically because 1. this way the users can see how they're being shown the code and 2. libraries are bad.

## Usage
Run 'rails g view_source' to create the relevant controller and view.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rails_show', git: 'https://github.com/TheJhyde/rails_show.git'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install rails_show
```

## Contributing
No thank you!

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
