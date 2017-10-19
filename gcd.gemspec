
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gcd/version"

Gem::Specification.new do |spec|
  spec.name          = "gcd"
  spec.version       = Gcd::VERSION
  spec.authors       = ["Robert Scott-Buccleuch"]
  spec.email         = ["rsb.code@gmail.com"]

  spec.summary       = %q{algorithm to solve gcd}
  spec.description   = %q{This gem is a cli app to solve gcd}
  spec.homepage      = "https://github.com/rsb/ruby-gcd"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.6"
end
