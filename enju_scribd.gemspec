$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_scribd/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_scribd"
  s.version     = EnjuScribd::VERSION
  s.authors     = ["Kosuke Tanabe"]
  s.email       = ["tanabe@mwr.mediacom.keio.ac.jp"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of EnjuScribd."
  s.description = "TODO: Description of EnjuScribd."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc", "init.rb"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1.rc1"
  s.add_dependency "scribd_fu"

  s.add_development_dependency "sqlite3"
end
