# frozen_string_literal: true

require_relative "lib/fastsort/version"

Gem::Specification.new do |spec|
  spec.name = "fastsort"
  spec.version = Fastsort::VERSION
  spec.authors = ["Dants0"]
  spec.email = ["gui.dg1@hotmail.com"]

  spec.summary = "a fast array sorter"
  spec.description = "Designed to efficiently organize the elements of an array in a specific order. Sorting is a fundamental operation in computer science and data processing, and the performance of a sorting algorithm is crucial."
  spec.homepage = "https://rubygems.org/gems/fastsort"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
