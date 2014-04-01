PROJECT = "openssl-ccm"

Gem::Specification.new do |s|
  s.name        = PROJECT
  s.version     = '0.0.1'
  s.date        = '2014-04-01'
  s.summary     = "RFC 3610 - CCM"
  s.description = "Ruby Gem for RFC 3610 - Counter with CBC-MAC (CCM)"
  s.authors     = ["Lars Schmertmann"]
  s.email       = 'SmallLars@t-online.de'
  s.files       = Dir.glob('lib/*.rb') +
                  Dir.glob("lib/#{PROJECT}/*.rb") + 
                  ['Gemfile', 'Rakefile']
  s.homepage    = ''
  s.license     = 'MIT'
  s.post_install_message = "Thanks for installing!"
  s.required_ruby_version = '>= 2.0.0'
  s.add_development_dependency 'rdoc', '~> 4.1', '>= 4.1.1'
  s.add_development_dependency 'yard', '~> 0.8', '>= 0.8.7.3'
  s.add_development_dependency 'rubocop', '~> 0.18', '>= 0.18.1'
  s.rdoc_options += ['-x', 'test/data_*']
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.test_files = Dir.glob('test/test_*.rb') + Dir.glob('test/data_*')
end
