require 'rake/testtask'
# FIXME hardcode this for now..
ENV['ARC_CLOUDFORMATION'] = 'TestrbStaging'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.warning = false
end

desc "Run tests"
task :default => :test
