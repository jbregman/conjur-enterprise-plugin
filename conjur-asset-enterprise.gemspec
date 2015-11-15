# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conjur/asset/enterprise/version'

Gem::Specification.new do |spec|
  spec.name          = "conjur-asset-enterprise"
  spec.version       = Conjur::Asset::Enterprise::VERSION
  spec.authors       = ["Josh Bregman"]
  spec.email         = ["josh.bregman@conjur.net"]
  spec.summary       = %q{Plugin to support enterprise conjur features}
  spec.homepage      = "https://github.com/jbregman/conjur-enterprise-plugin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "gli", "~> 2.12"

  spec.add_runtime_dependency "conjur-cli", "~> 4.12"
  spec.add_runtime_dependency "rack", "~> 1.5"
  spec.add_runtime_dependency "rack-streaming-proxy", "~> 2.0"
  spec.add_runtime_dependency "unicorn", ">= 4.8.3", "~> 4.8"
  spec.add_runtime_dependency "unicorn-rails", ">= 2.2.0", "~> 2.2"
  spec.add_runtime_dependency "escape_utils", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "copyright-header"
end
