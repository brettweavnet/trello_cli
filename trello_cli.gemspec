# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trello_cli/version'

Gem::Specification.new do |gem|
  gem.name          = "trello_cli"
  gem.version       = TrelloCli::VERSION
  gem.authors       = ["Brett Weaver"]
  gem.email         = ["brett@weav.net"]
  gem.description   = %q{Simple Trello Command Line Interface}
  gem.summary       = %q{Simple Trello Command Line Interface}
  gem.homepage      = "https://github.com/brettweavnet/trello_cli"

  gem.files         = `git ls-files`.split($/)
  gem.files         -= gem.files.grep(%r{^\.})
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"

  gem.add_runtime_dependency 'ruby-trello', '0.5.1'
end
