require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['spec/lib/hiw_forklift/*_spec.rb']
  t.verbose = true
end
