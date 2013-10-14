# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'summarise/version'

Gem::Specification.new do |spec|
  spec.name          = "summarise"
  spec.version       = Summarise::VERSION
  spec.authors       = ["Nicholas Johnson"]
  spec.email         = ["nicholas@forwardadvance.com"]
  spec.description   = %q{Adds a methods to allow you to summarise strings}
  spec.summary       = %q{include the gem and call "abc".summarise}
  spec.homepage      = "https://github.com/forwardadvance/summarise"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri"
end
