# frozen_string_literal: true

require_relative 'lib/simple_monads/version'

Gem::Specification.new do |s|
  s.name        = 'simple_monads'
  s.version     = SimpleMonads::VERSION
  s.summary     = 'Simple monads'
  s.description = 'Simple monads without drive dependencies'
  s.authors     = ['Kirill Leonov']
  s.email       = 'leonov835@yandex.ru'
  s.files       = Dir.glob('lib/**/*')
  s.homepage    = 'https://github.com/leonovk/simple_monads'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 3.0.6'
  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = s.homepage
  s.metadata['documentation_uri'] = s.homepage
end
