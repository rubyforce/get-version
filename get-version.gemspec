# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'get_version/version'

Gem::Specification.new do |spec|
  spec.name          = "get-version"
  spec.version       = GetVersion::VERSION
  spec.authors       = ["Alexandr Korsak"]
  spec.email         = ["alex.korsak@gmail.com"]
  spec.description   = %q{get the current version of the deployed application}
  spec.summary       = %q{you should mount this sinatra app and access using /version.txt}
  spec.homepage      = "http://github.com/rubyforce/get-version"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

