# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_db/version'

Gem::Specification.new do |spec|
  spec.name          = "git_db"
  spec.version       = GitDb::VERSION
  spec.authors       = ["bobby grayson"]
  spec.email         = ["bobbygrayson@gmail.com"]

  spec.summary       = %q{Git as a database.}
  spec.description   = %q{Git as a database, a simple kv store.}
  spec.homepage      = "not_yet.ru"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake", "~> 10.0"
end
