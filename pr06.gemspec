# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pr06/version"
Gem::Specification.new do |spec|
  spec.name          = "pr06"
  spec.version       = Pr06::VERSION
 spec.authors       = ["Marco Antonio Maestre Mirabal"]
  spec.email         = ["alu0100890709@ull.edu.es"]

<<<<<<< HEAD
 spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{ Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
=======
  spec.summary       = %q{Práctica de Laboratorio #6. Desarrollo Dirigido por Pruebas (TDD)..}
  spec.description   = %q{Practica sobre el Desarrollo Dirigido por Pruebas  para la clase Alimento.}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1718/tdd-alu0100890709"
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  
  spec.add_development_dependency "coveralls"
end
