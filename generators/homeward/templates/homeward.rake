require 'fileutils'

BLUEPRINT_GIT_PATH = "#{ENV['HOME']}/Code/Css/blueprint-css"

desc %q(Update and install Blueprint, replace prototype with jrails)
task :homeward => %w(homeward:blueprint:update homeward:blueprint:install homeward:javascript:use_jrails)

namespace :homeward do
  namespace :blueprint do
    desc 'pulls the latest blueprint code'
    task :update do
      Dir.chdir BLUEPRINT_GIT_PATH do
        puts %x(echo "Stashing\n" &&
                git stash &&
                echo "\nPulling\n" &&
                git pull &&
                echo "\nPopping\n" &&
                git stash pop
               )
      end
    end

    desc "installs blueprint"
    task :install do
      compressor = "#{BLUEPRINT_GIT_PATH}/lib/compress.rb"
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
