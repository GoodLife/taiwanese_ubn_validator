# encoding: utf-8

require 'rubygems'

begin
  require 'bundler'
rescue LoadError => e
  warn e.message
  warn "Run `gem install bundler` to install Bundler."
  exit -1
end

begin
  Bundler.setup(:development)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems."
  exit e.status_code
end

require 'rake'

require 'rubygems/tasks'
Gem::Tasks.new

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.libs.push "spec"
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end
