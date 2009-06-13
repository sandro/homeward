require 'fileutils'
require 'open3'

BLUEPRINT_CLONE_URL = "git://github.com/joshuaclayton/blueprint-css.git"
BLUEPRINT_PATH = "/tmp/blueprint-css"

namespace :homeward do
  desc %q(Update and install Blueprint, replace prototype with jrails)
  task :install => %w(homeward:blueprint:update homeward:blueprint:install homeward:javascript:use_jrails)

  namespace :blueprint do
    task :clone do
      unless File.exists?(BLUEPRINT_PATH)
        puts %x(git clone #{BLUEPRINT_CLONE_URL} #{BLUEPRINT_PATH})
      end
    end

    desc 'pulls the latest blueprint code'
    task :update => :clone do
      Dir.chdir BLUEPRINT_PATH do
        Open3.popen3("git stash && git pull && git pop") do |stdin, stdout, stderr|
          puts stdout.readlines.last
        end
      end
    end

    desc "installs blueprint"
    task :install => :clone do
      compressor = "#{BLUEPRINT_PATH}/lib/compress.rb"
      install_path = "#{Rails.root}/public/stylesheets/blueprint"
      %x(ruby #{compressor} -o #{install_path})
      FileUtils.rm_rf "#{install_path}/src"
    end
  end

  namespace :javascript do
    desc 'replaces prototype with jrails'
    task :use_jrails => [:remove_prototype, :install_jrails]

    desc 'removes prototype'
    task :remove_prototype do
      Dir.chdir("#{Rails.root}/public/javascripts") do
        FileUtils.rm_rf %w(prototype.js effects.js dragdrop.js controls.js)
      end
    end

    desc 'installs jrails'
    task :install_jrails do
      Dir.chdir(Rails.root) do
        puts %x(script/plugin install git://github.com/aaronchi/jrails.git)
      end
    end
  end
end
