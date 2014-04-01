require "bundler/gem_tasks"
require 'rake/testtask'

task :default => :build

desc "Run tests"
Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc "Uninstall gem"
task (:uninstall) { sh "gem uninstall openssl-ccm" }

desc "Development Dependencies"
task (:devinst) { sh "gem install --dev ./openssl-ccm-0.0.1.gem" }

desc "Clean gem"
task :clean do
  begin; sh "rm ./openssl-ccm-*.gem"; rescue; end
  begin; sh "rm -R ./.yardoc";   rescue; end
  begin; sh "rm -R ./doc";       rescue; end
end

desc "Bundle install"
task (:bundle) { sh "bundle install" }

desc "Create documentation"
task :doc do
  sh "gem rdoc --rdoc openssl-ccm"
  sh "yardoc"
end
