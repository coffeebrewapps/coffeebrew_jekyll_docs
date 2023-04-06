# coding: utf-8
root = File.expand_path(__dir__)
$LOAD_PATH.unshift(root) unless $LOAD_PATH.include?(root)
require "version"

Gem::Specification.new do |spec|
  spec.name          = "coffeebrew_jekyll_docs"
  spec.version       = Coffeebrew::Jekyll::Docs::VERSION
  spec.authors       = ["Coffee Brew Apps"]
  spec.email         = ["coffeebrewapps@gmail.com"]

  spec.summary       = %q{A Jekyll theme for Coffee Brew Apps documentation.}
  spec.description   = "A Jekyll theme for Coffee Brew Apps documentation."
  spec.homepage      = "https://github.com/coffeebrewapps/coffeebrew_jekyll_docs"
  spec.license       = "MIT"

  spec.files            = Dir["_includes/**/*.html", "_layouts/**/*.html", "_sass/**/*.scss", "assets/css/**/*.scss", "assets/js/**/*.js", "assets/webfonts/**/*.ttf", "assets/webfonts/**/*.woff2"]
  spec.extra_rdoc_files = Dir["README.md", "CHANGELOG.md", "LICENSE"]

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
    spec.metadata["plugin_type"] = "theme"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.add_dependency "bundler"
  spec.add_dependency "jekyll", ">= 4.0", "< 5.0"
  spec.add_dependency "jekyll-toc", "~> 0.18.0"
  spec.add_dependency "rake", "~> 13.0.6"
end
