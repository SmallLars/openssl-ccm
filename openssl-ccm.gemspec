lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openssl/ccm/version'

Gem::Specification.new do |s|
  s.name                  = 'openssl-ccm'
  s.version               = OpenSSL::CCM::VERSION
  s.required_ruby_version = '>= 2.0.0'
  s.authors               = ['Lars Schmertmann']
  s.email                 = ['SmallLars@t-online.de']
  s.summary               = 'RFC 3610 - CCM'
  s.description           = 'Ruby Gem for RFC 3610 - Counter with CBC-MAC (CCM)'
  s.homepage              = 'https://github.com/smalllars/openssl-ccm'
  s.license               = 'MIT'
  s.post_install_message  = 'Thanks for installing!'

  s.add_dependency 'openssl', '~> 3.0'

  s.files = Dir.glob('lib/**/*.rb') +
            %w[LICENSE README.md]

  s.rdoc_options += ['-x', 'test/data_*']
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.metadata = {
    'rubygems_mfa_required' => 'true',
    'source_code_uri' => 'https://github.com/smalllars/openssl-ccm'
  }
end
