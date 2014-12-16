# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cumis/version'

Gem::Specification.new do |spec|
  spec.name          = "cumis"
  spec.version       = Cumis::VERSION
  spec.authors       = ["Steven Yap", "Jack Huang"]
  spec.email         = ["stevenyap@futureworkz.com", "jack@futureworkz.com"]
  spec.summary       = %q{Cumis is a Ruby CMS for u and i!}
  spec.description   = %q{Cumis is a Ruby CMS that works with Rails and RailsAdmin. Install the gem and use it to quickly setup pages for your users to edit.}
  spec.homepage      = "http://github.com/Neember/cumis"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
