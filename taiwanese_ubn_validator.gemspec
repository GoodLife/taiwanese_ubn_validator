# -*- encoding: utf-8 -*-

require File.expand_path('../lib/taiwanese_ubn_validator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'taiwanese_ubn_validator'
  gem.version       = TaiwaneseUbnValidator::VERSION
  gem.summary       = %q{台灣/中華民國之統一編號的檢查驗證}
  gem.description   = gem.summary
  gem.license       = 'MIT'
  gem.authors       = ['GoodLife', 'lulalala']
  gem.email         = 'mark@goodlife.tw'
  gem.homepage      = 'https://github.com/GoodLife/taiwanese_ubn_validator'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.6'
  gem.add_development_dependency 'rake', '~> 10.3'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
