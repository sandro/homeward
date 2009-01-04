class HomewardLayoutGenerator < Rails::Generator::Base
  attr_accessor :project_name

  def initialize(runtime_args, runtime_options = {})
    super
    @project_name = File.basename(Rails.root).humanize
  end

  def manifest
    record do |m|
      m.template 'application.html.haml', 'app/views/layouts/application.html.haml', :collision => :ask
    end
  end


end
