# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'timeit/version'

Gem::Specification.new do |spec|
  spec.name          = "timeit"
  spec.version       = Timeit::VERSION
  spec.authors       = ["rainkinz"]
  spec.email         = ["brendan.grainger@gmail.com"]
  spec.description   = <<-TEXT
    Very basic ruby timer for keeping track of the duration, splits and rate of
    a block of code.
  TEXT
  spec.summary       = %q{Track duration of a block of code}
  spec.homepage      = "https://github.com/rainkinz/timeit"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
