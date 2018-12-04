# RailsShow
Generates a controller, view, and test that allows visitors to your app to see the app's code.

Run 'rails g view_source' to generate a sources controller. This will display the app's file system and files on the /sources path. Or provide a name for a customer controller and route. Controllers names are automatically pluralized.

Good for showing off the code you made. Bad for keeping secrets! It's a generator instead of adding it automatically because so users can see how they're being shown the code.

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

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
