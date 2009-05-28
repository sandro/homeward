class HomewardGenerator < Rails::Generator::Base
  attr_accessor :project_name

  def initialize(runtime_args, runtime_options = {})
    super
    @project_name = File.basename(Rails.root).humanize
  end

  def manifest
    record do |m|
      m.directory 'lib/tasks'
      m.directory 'config/initializers'
      m.directory 'app/views/layouts'

      m.with_options :collision => :ask do |mc|
        mc.file 'homeward.rake', 'lib/tasks/homeward.rake'

        mc.template 'application.html.haml', 'app/views/layouts/application.html.haml'
        mc.template 'application_config.rb', 'config/initializers/application_config.rb'
        mc.template 'settings.yml', 'config/settings.yml'
        mc.template 'settings.yml', 'config/settings.yml.example'
      end
    end
  end
end

