
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "marcman/version"

Gem::Specification.new do |spec|
  spec.name          = "marcman"
  spec.version       = Marcman::VERSION
  spec.authors       = ["Sean Redmond"]
  spec.email         = ["github-smr@sneakemail.com"]

  spec.summary       = %q{Little command line utility for looking up MARC field definitions.}
  spec.description   = %q{Little command line utility for looking up MARC field definitions.}
  spec.homepage      = "http://127.0.0.1"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
