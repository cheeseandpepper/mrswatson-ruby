# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mrswatson/version'

Gem::Specification.new do |spec|
  spec.name          = "mrswatson"
  spec.version       = MrsWatson::VERSION
  spec.authors       = ["cheeseandpepper"]
  spec.email         = ["cheeseandpepper@gmail.com"]
  spec.summary       = %q{This is a ruby wrapper for the Mrs Watson command line utility.}
  spec.description   = %q{For usage and other details visit the github repo.}
  spec.homepage      = "http://github.com/cheeseandpepper/mrswatson-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
