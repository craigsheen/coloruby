# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Craig Sheen"]
  gem.email         = ["craig_sheen@hotmail.com"]
  gem.description   = %q{Colour helpers for ruby}
  gem.summary       = %q{Colour helpers for ruby}
  gem.homepage      = ""
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "coloruby"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"
  
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  
end