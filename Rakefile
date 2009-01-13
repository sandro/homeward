# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'homeward'

task :default => 'spec:run'

namespace :gem do
  task :redo do
    puts %x(rm -rf pkg/homeward-1.0.0 && rake manifest:create && rake gem:reinstall && rake gem:spec)
  end
end

PROJ.name = 'homeward'
PROJ.summary = 'Personal rails methods I always use'
PROJ.description = PROJ.summary
PROJ.authors = 'Sandro Turriate'
PROJ.email = 'sandro.turriate@gmail.com'
PROJ.url = 'http://github.com/sandro/homeward'
PROJ.version = Homeward::VERSION
PROJ.rubyforge.name = 'homeward'
PROJ.readme_file = 'README.rdoc'
PROJ.gem.development_dependencies = []

PROJ.spec.opts << '--color'

PROJ.exclude << %w(.*.gemspec \.gitignore)

