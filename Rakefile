require 'rake'
require 'rspec/core/rake_task'

desc "Run serverspec code for all"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end

roles = `git ls-files spec`.split
  .map {|f| f.split('/')[1]}
  .uniq
  .select {|dir| File.directory? "spec/#{dir}"}

roles.each do |r|
  desc "Run serverspec code for #{r}"
  RSpec::Core::RakeTask.new("spec:#{r}") do |t|
    t.pattern = "spec/#{r}/*_spec.rb"
  end
end

task :default => :spec
