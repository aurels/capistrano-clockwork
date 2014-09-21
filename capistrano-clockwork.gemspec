# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/clockwork/version'

Gem::Specification.new do |spec|
  spec.name        = 'capistrano-clockwork'
  spec.version     = Capistrano::Sidekiq::VERSION
  spec.authors     = ['Aurélien Malisart']
  spec.email       = ['aurelien.malisart@gmail.com']
  spec.summary     = %q{Clockwork integration for Capistrano}
  spec.description = %q{Clockwork integration for Capistrano}
  spec.homepage    = 'https://github.com/aurels/capistrano-clockwork'
  spec.license     = 'MIT'

  spec.required_ruby_version = '>= 1.9.3'
  spec.files = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano'
  spec.add_dependency 'clockwork'
end
