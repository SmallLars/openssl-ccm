# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openssl/ccm/version'

Gem::Specification.new do |s|
  s.name                  = 'openssl-ccm'
  s.version               = OpenSSL::CCM::VERSION
  s.required_ruby_version = '>= 2.0.0'
  s.date                  = '2015-09-28'
  s.authors               = ['Lars Schmertmann']
  s.email                 = ['SmallLars@t-online.de']
  s.summary               = 'RFC 3610 - CCM'
  s.description           = 'Ruby Gem for RFC 3610 - Counter with CBC-MAC (CCM)'
  s.homepage              = 'https://github.com/smalllars/openssl-ccm'
  s.license               = 'MIT'
  s.post_install_message  = "Thanks for installing!"

  s.files      = Dir.glob('lib/openssl/*.rb') +
                 Dir.glob("lib/openssl/ccm/*.rb") + 
                 ['Gemfile', 'Rakefile', '.rubocop.yml', '.yardopts']
  s.test_files = Dir.glob('test/test_*.rb') + Dir.glob('test/data_*')

  s.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'
  s.add_development_dependency 'rdoc', '~> 4.2', '>= 4.2.0'
  s.add_development_dependency 'yard', '~> 0.8', '>= 0.8.7.6'
  s.add_development_dependency 'rubocop', '~> 0.34', '>= 0.34.2'
  s.add_development_dependency 'test-unit', '~> 3.1',  '>=3.1.4'
  s.add_development_dependency 'coveralls', '~> 0.8', '>= 0.8.2'

  s.rdoc_options += ['-x', 'test/data_*']
  s.extra_rdoc_files = ['README.md', 'LICENSE']
end
