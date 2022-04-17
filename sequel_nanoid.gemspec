# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "sequel_nanoid"
  spec.version = "0.1.3"
  spec.authors = ["Elijah Goh"]
  spec.email = ["iamchoonggg@gmail.com"]

  spec.summary = "Use Nanoid in your sequel gem"
  spec.description = "Use nanoid with sequel https://github.com/radeno/nanoid.rb"
  spec.homepage = "https://github.com/elithecho/sequel_nanoid"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/radeno/nanoid.rb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_runtime_dependency "nanoid", "~> 2.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  # spec.metadata["rubygems_mfa_required"] = "true"
end
