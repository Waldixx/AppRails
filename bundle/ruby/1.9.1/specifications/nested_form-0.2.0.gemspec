# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "nested_form"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Bates", "Andrea Singh"]
  s.date = "2012-02-08"
  s.description = "Gem to conveniently handle multiple models in a single form with Rails 3 and jQuery or Prototype."
  s.email = "ryan@railscasts.com"
  s.homepage = "http://github.com/ryanb/nested_form"
  s.require_paths = ["lib"]
  s.rubyforge_project = "nested_form"
  s.rubygems_version = "1.8.15"
  s.summary = "Gem to conveniently handle multiple models in a single form."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.6.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<rspec-rails>, ["~> 2.6.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec-rails>, ["~> 2.6.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
