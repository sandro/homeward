def load_app_settings
  returning HashWithIndifferentAccess.new do |app_settings|
    config_file_path = File.join(RAILS_ROOT, %w(config settings.yml))
    if File.exist?(config_file_path)
      config = YAML.load_file(config_file_path)
      app_settings.merge!(config[Rails.env]) if config[Rails.env]
    else
      puts "WARNING: configuration file #{config_file_path} not found."
    end
  end
end

APP_SETTINGS = load_app_settings
