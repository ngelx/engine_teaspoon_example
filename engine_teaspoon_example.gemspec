$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engine_teaspoon_example/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engine_teaspoon_example"
  s.version     = EngineTeaspoonExample::VERSION
  s.authors     = ["ngel"]
  s.email       = ["ngel@protonmail.com"]
  s.homepage    = "https://github.com/ngelx/engine_teaspoon_example"
  s.summary     = "Summary of EngineTeaspoonExample."
  s.description = "Description of EngineTeaspoonExample."
  s.license     = "MIT"

  s.test_files = Dir["spec/**/*"]

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "exe"
  s.require_paths = ["lib"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "browserify-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "teaspoon-jasmine"
  s.add_development_dependency 'phantomjs'
  s.add_development_dependency 'coffee-script'


end
