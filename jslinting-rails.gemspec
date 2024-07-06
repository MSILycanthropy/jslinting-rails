require_relative "lib/jslinting/version"

Gem::Specification.new do |spec|
  spec.name        = "jslinting-rails"
  spec.version     = Jslinting::VERSION
  spec.authors     = [ "Ethan Kircher" ]
  spec.email       = [ "ethanmichaelk@gmail.com" ]
  spec.homepage    = "https://github.com/rails/jsbundling-rails"
  spec.summary     = "Lint and format JavaScript in Rails with eslint and prettier"
  spec.license     = "MIT"

  spec.files = Dir["lib/**/*", "MIT-LICENSE", "README.md"]

  spec.add_dependency "rails", ">= 6.0.0"
end
