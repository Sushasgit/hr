# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hr/version'

Gem::Specification.new do |spec|
  spec.name          = "hr"
  spec.version       = Hr::VERSION
  spec.authors       = ["Ivan Tse"]
  spec.email         = ["ivan.tse1@gmail.com"]
  spec.description   = %q{A <hr /> tag for your terminal}
  spec.summary       = %q{Use hr to delimit your output for a better separation visually}
  spec.homepage      = "https://github.com/ivantsepp/hr"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('colorize', "~> 0.6")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "rspec", "~> 2.14"
end
