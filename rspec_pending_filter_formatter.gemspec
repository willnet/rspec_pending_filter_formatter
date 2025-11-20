# frozen_string_literal: true

require_relative "lib/rspec_pending_filter_formatter/version"

Gem::Specification.new do |spec|
  spec.name = "rspec_pending_filter_formatter"
  spec.version = RSpecPendingFilterFormatter::VERSION
  spec.authors = ["willnet"]
  spec.email = ["netwillnet@gmail.com"]

  spec.summary = "RSpec formatter that filters out detailed pending test information"
  spec.description = "A custom RSpec formatter that suppresses detailed pending test output and shows only the count in the summary"
  spec.homepage = "https://github.com/willnet/rspec-pending-filter-formatter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec-core", ">= 3.12.0"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.12"
end
