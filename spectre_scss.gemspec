# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spectre_scss/version'

Gem::Specification.new do |spec|
  spec.name          = 'spectre_scss'
  spec.version       = SpectreScss::VERSION
  spec.authors       = ['Zoran']

  spec.summary       = 'Spectre is a lightweight, responsive and modern CSS framework.'
  spec.homepage      = 'https://github.com/zokioki/spectre_scss'
  spec.license       = 'MIT'

  spec.files         = Dir['*.{md,txt}', '{lib,vendor}/**/*']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.0'
  spec.add_development_dependency 'rake', '~> 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
