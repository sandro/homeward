class HomewardGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options = {})
    Dir.mkdir('lib/tasks') unless File.directory?('lib/tasks')
    super
  end

  def manifest
    record do |m|
      m.file 'homeward.rake', 'lib/tasks/homeward.rake', :collision => :ask
    end
  end
end
