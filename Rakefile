# frozen_string_literal: true

require_relative 'lib/simple_monads/version'

task :build_and_push do
  puts "build simple_monads #{SimpleMonads::VERSION}"
  system 'gem build simple_monads.gemspec'
  file_name = "simple_monads-#{SimpleMonads::VERSION}.gem"
  system "gem push #{file_name} -k rubygems"
  File.delete(file_name)
  puts 'done'
end