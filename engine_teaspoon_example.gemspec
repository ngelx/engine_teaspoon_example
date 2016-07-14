$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engine_teaspoon_example/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engine_teaspoon_example"
  s.version     = EngineTeaspoonExample::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = "Summary of EngineTeaspoonExample."
  s.description = "Description of EngineTeaspoonExample."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
