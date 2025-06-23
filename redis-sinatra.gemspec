# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'redis-sinatra/version'

Gem::Specification.new do |s|
  s.name        = 'redis-sinatra'
  s.version     = Redis::Sinatra::VERSION
  s.authors     = ['Luca Guidi']
  s.email       = ['me@lucaguidi.com']
  s.homepage    = 'http://redis-store.org/redis-sinatra'
  s.summary     = %q{Redis store for Sinatra}
  s.description = %q{Redis store for Sinatra}
  s.license     = 'MIT'

  s.rubyforge_project = 'redis-sinatra'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'redis-store', '>= 1.1', '< 2'
  s.add_dependency 'sinatra', '>= 1', '< 5'

  s.add_development_dependency 'rake', '>= 12.3.3'
  s.add_development_dependency 'bundler',  '~> 1.3'
  s.add_development_dependency 'mocha',    '~> 0.14.0'
  s.add_development_dependency 'minitest', '~> 5'
  s.add_development_dependency 'redis-store-testing'
end
