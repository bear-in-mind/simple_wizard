require_relative "lib/simple_wizard/version"

Gem::Specification.new do |spec|
  spec.name        = "simple_wizard"
  spec.version     = SimpleWizard::VERSION
  spec.authors     = ["Louis Sommer"]
  spec.email       = ["louis.sommer@hey.com"]
  spec.homepage    = "https://github.com/bear-in-mind/simple_wizard"
  spec.summary     = "A gem to easily create form wizards in Rails"
  spec.description = "Built on top of Hotwire and SimpleForm"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bear-in-mind/simple_wizard"
  spec.metadata["changelog_uri"] = "https://github.com/bear-in-mind/simple_wizard"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.1"
  spec.add_dependency "simple_form"
  spec.add_dependency "hotwire"
end
