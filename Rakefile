require './lib/openssl/ccm/version'
require 'rake/testtask'
require 'rake/clean'
require 'rubocop/rake_task'

task default: %i[rubocop test doc]

desc 'Run tests'
Rake::TestTask.new do |t|
  t.pattern = 'test/test_*.rb'
  t.verbose = true
end

desc 'Create documentation'
task :doc do
  sh 'gem rdoc --rdoc openssl-ccm'
  sh 'yardoc'
end

CLEAN.include('coverage')
CLEAN.include('doc')
CLEAN.include('.yardoc')
CLEAN.include("openssl-ccm-#{OpenSSL::CCM::VERSION}.gem")

RuboCop::RakeTask.new
