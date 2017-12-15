require 'bundler/setup'
require 'rake'
require 'bundler/gem_tasks'
require 'redis-store/testing/tasks'
require 'redis-sinatra/version'
require 'date'

desc 'Generate the changelog based on git history'
task :changelog, :from, :to do |_t, args|

  #from = args[:from] || `git describe --tags --abbrev=0`.strip
  #to = args[:to] || 'HEAD'
  log = `git log 586af720daf323efeee358267752c9098c1fb407..HEAD --pretty=format:'%an|%B___'`

  puts "redis-sinatra #{Redis::Sinatra::VERSION} (#{Date.today})"
  puts '-' * 80
  puts

  log.split(/___/).each do |commit|
    pieces = commit.split('|').reverse
    author = pieces.pop.strip
    message = pieces.join.strip

    next if message =~ /^\s*Merge pull request/
    next if message =~ /No changelog/
    next if message =~ /^\s*Merge branch/

    first_line = false

    message.each_line do |line|
      if !first_line
        first_line = true
        puts "*   #{line}"
      elsif line.strip.empty?
        puts
      else
        puts "    #{line}"
      end
    end

    puts "    #{author}"
    puts
  end
end

