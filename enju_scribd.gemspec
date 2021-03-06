$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_scribd/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_scribd"
  s.version     = EnjuScribd::VERSION
  s.authors     = ["Kosuke Tanabe"]
  s.email       = ["tanabe@mwr.mediacom.keio.ac.jp"]
  s.homepage    = "https://github.com/nabeta/enju_scribd"
  s.summary     = "enju_scribd plugin"
  s.description = "upload documents to scribd using Next-L Enju"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "scribd_fu"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
