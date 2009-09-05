require 'ostruct'

module ApplicationSettings
  extend self

  attr_writer :settings
  private :settings=

  def build_from_yaml(path)
    if File.exist?(path) && config = YAML.load_file(path)
      if settings = config[Rails.env]
        self.settings = OpenStruct.new settings
      end
    end
  end

  def do_not_reply
    "do_not_reply@#{settings.host}.com"
  end

  def host_uri
    @host_uri ||= URI::HTTP.build(:host => settings.host, :port => settings.host_port)
  end

  def host_with_port
    host_uri.host_with_port
  end

  def method_missing(name)
    settings.send(name) rescue nil
  end

  private

  def settings
    @settings ||= OpenStruct.new
  end
end

ApplicationSettings.build_from_yaml(File.join(RAILS_ROOT, %w(config settings.yml)))
