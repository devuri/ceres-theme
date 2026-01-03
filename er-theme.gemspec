# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "er-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Your Name"]
  spec.summary       = "A clean Jekyll theme for GitHub Pages"
  spec.homepage      = "https://github.com/YOURUSERNAME/er-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
end
