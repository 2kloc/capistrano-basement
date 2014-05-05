# encoding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "capistrano-basement"
  gem.version       = "1.0"
  gem.authors       = ["Mathieu Allaire"]
  gem.email         = ["mathieu@lodgem.com"]
  gem.description   = "Provides a basic capistrano rails stack"
  gem.summary       = "Provides a basic capistrano rails stack"
  gem.homepage      = "https://github.com/lodgem/capistrano-basement"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]

  gem.add_dependency "capistrano", "~> 3.1"
  gem.add_dependency "sshkit", "~> 1.3"

end
