# Redis stores for Sinatra

__`redis-sinatra`__ provides a Redis backed cache store for __Sinatra__. See the main [redis-store readme](https://github.com/redis-store/redis-store) for general guidelines.

## Installation

```ruby
# Gemfile
gem 'redis-sinatra'
```

## Usage

```ruby
require 'sinatra'
require 'redis-sinatra'

class MyApp < Sinatra::Base
  register Sinatra::Cache

  get '/hi' do
    settings.cache.fetch('greet') { 'Hello, World!' }
  end
end
```

Keep in mind that the above fetch will return `"OK"` on success, not the return of the block.

## Running tests

```ruby
gem install bundler
git clone git://github.com/redis-store/redis-sinatra.git
cd redis-sinatra
bundle install
bundle exec rake
```

If you are on **Snow Leopard** you have to run `env ARCHFLAGS="-arch x86_64" bundle exec rake`

## Status

[![Gem Version](https://badge.fury.io/rb/redis-sinatra.png)](http://badge.fury.io/rb/redis-sinatra) 
[![Build Status](https://secure.travis-ci.org/redis-store/redis-sinatra.png?branch=master)](http://travis-ci.org/redis-store/redis-sinatra?branch=master) 
[![Code Climate](https://codeclimate.com/github/redis-store/redis-sinatra.png)](https://codeclimate.com/github/redis-store/redis-sinatra)

## Copyright

2009 - 2013 Luca Guidi - [http://lucaguidi.com](http://lucaguidi.com), released under the MIT license
