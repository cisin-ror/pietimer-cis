Gem::Specification.new do |s|
  s.name        = 'pietimer-cis'
  s.version     = '0.0.6'
  s.date        = '2013-11-01'
  s.summary     = "pietimer-cis will provide you a counter as a pie"
  s.description = "pietimer-cis will provide you a counter as a pie"
  s.authors     = ["Mohan Salvi", "CISROR Team"]
  s.files       = Dir["{lib,app}/**/*", "[A-Z]*"]
  s.require_paths = ["lib"]  

  s.license       = 'MIT'
  s.rubyforge_project = "jquery-rails"
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency "jquery-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "railties"

end
