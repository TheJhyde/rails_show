$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_show/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_show"
  s.version     = "0.0.2"
  s.authors     = ["J Hyde"]
  s.email       = ["jkhyde86@gmail.com"]
  s.homepage    = "http://thejhyde.zone"
  s.summary     = "Generates a controller and view that allows visitors to your app to see the app's code."
  s.description = "Run 'rails g view_source' to generate a source controller. This will display the app's file system and files on the /source path. Good for showing off the code you made. Bad for keeping secrets! It's a generator instead of adding it automatically because 1. this way the users can see how they're being shown the code and 2. libraries are bad."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1", ">= 5.2.1.1"

  s.add_development_dependency "sqlite3"
end
