# -*- encoding: utf-8 -*-
# stub: jekyll-category-pages 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-category-pages".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dr. Wolfram Schroers".freeze]
  s.date = "2020-03-28"
  s.description = "This plugin is for all authors that tag their pages using categories. It generates\ncategory overview pages with a custom layout. Optionally, it also adds proper\npagination for these pages.\n\nPlease refer to the README.md file on the project homepage at\nhttps://github.com/field-theory/jekyll-category-pages\n".freeze
  s.email = "Wolfram.Schroers@field-theory.org".freeze
  s.homepage = "https://github.com/field-theory/jekyll-category-pages".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Add category index pages with and without pagination.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<jekyll-paginate>.freeze, [">= 1.0.0", "~> 1.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["~> 4.0"])
      s.add_dependency(%q<jekyll-paginate>.freeze, [">= 1.0.0", "~> 1.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["~> 4.0"])
    s.add_dependency(%q<jekyll-paginate>.freeze, [">= 1.0.0", "~> 1.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
