require './lib/openssl/ccm/version'
require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rake/clean'

task default: :build

desc 'Run tests'
Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc 'Create documentation'
task :doc do
  sh 'gem rdoc --rdoc openssl-ccm'
  sh 'yardoc'
end

CLEAN.include('coverage')
CLEAN.include('doc')
CLEAN.include('.yardoc')

desc 'Uninstall and clean documentation'
task :clean do
  sh 'gem uninstall openssl-ccm'
end

desc 'Development Dependencies'
task :devinst do
  sh "gem install --dev ./openssl-ccm-#{OpenSSL::CCM::VERSION}.gem"
end

desc 'Bundle install'
task :bundle do
  sh 'bundle install'
end
