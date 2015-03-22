lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_service/version'

Gem::Specification.new do |spec|
  spec.name          = "activeservice"
  spec.version       = Activeservice::VERSION
  spec.authors       = ["Rei"]
  spec.email         = ["chloerei@gmail.com"]

  spec.summary       = %q{Service object framework for rails.}
  spec.description   = %q{Service object framework for rails.}
  spec.homepage      = "https://github.com/chloerei/activeservice/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
