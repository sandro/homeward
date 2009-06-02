# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{homeward}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sandro Turriate"]
  s.date = %q{2009-06-01}
  s.description = %q{Personal rails methods I always use}
  s.email = %q{sandro.turriate@gmail.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc", "lib/tasks/homeward.rake"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "init.rb", "lib/homeward.rb", "lib/tasks/homeward.rake", "rails/init.rb", "rails_generators/homeward/USAGE", "rails_generators/homeward/homeward_generator.rb", "rails_generators/homeward/templates/application.html.haml", "rails_generators/homeward/templates/application_settings.rb", "rails_generators/homeward/templates/current_page_normalizer.rb", "rails_generators/homeward/templates/homeward.rake", "rails_generators/homeward/templates/homeward_helper.rb", "rails_generators/homeward/templates/settings.yml", "spec/homeward_spec.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/sandro/homeward}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{homeward}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Personal rails methods I always use}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
