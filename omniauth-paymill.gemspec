# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-paymill/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-paymill"
  spec.version       = Omniauth::Paymill::VERSION
  spec.authors       = ["Zamith"]
  spec.email         = ["zamith@groupbuddies.com"]
  spec.description   = %q{This gem contains the Paymill Connect strategy for OmniAuth2}
  spec.summary       = %q{OmniAuth2 strategy for Paymill Connect}
  spec.homepage      = "https://github.com/groupbuddies/omniauth-paymill"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth-oauth2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 2.7'
  spec.add_development_dependency 'simplecov'
end
