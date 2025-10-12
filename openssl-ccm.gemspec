# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openssl/ccm/version'

Gem::Specification.new do |s|
  s.name                  = 'openssl-ccm'
  s.version               = OpenSSL::CCM::VERSION
  s.required_ruby_version = '>= 2.0.0'
  s.date                  = '2022-07-29'
  s.authors               = ['Lars Schmertmann']
  s.email                 = ['SmallLars@t-online.de']
  s.summary               = 'RFC 3610 - CCM'
  s.description           = 'Ruby Gem for RFC 3610 - Counter with CBC-MAC (CCM)'
  s.homepage              = 'https://github.com/smalllars/openssl-ccm'
  s.license               = 'MIT'
  s.post_install_message  = 'Thanks for installing!'

  s.files      = Dir.glob('lib/openssl/*.rb') +
                 Dir.glob('lib/openssl/ccm/*.rb') +
                 ['Gemfile', 'Rakefile', '.rubocop.yml', '.yardopts']
  s.test_files = Dir.glob('test/test_*.rb') + Dir.glob('test/data_*')

  s.add_development_dependency 'rake', '~> 13.3', '>= 13.3.0'
  s.add_development_dependency 'rdoc', '~> 6.15', '>= 6.15.0'
  s.add_development_dependency 'yard', '~> 0.9', '>= 0.9.37'
  s.add_development_dependency 'rubocop', '~> 1.81', '>= 1.81.1'
  s.add_development_dependency 'test-unit', '~> 3.7',  '>=3.7.0'
  s.add_development_dependency 'simplecov', '~> 0.22', '>= 0.22.0'

  s.rdoc_options += ['-x', 'test/data_*']
  s.extra_rdoc_files = ['README.md', 'LICENSE']
end
