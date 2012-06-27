# -*- encoding: utf-8 -*-
require File.expand_path('../lib/markdown-scaffold/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Shun Matsumoto"]
  gem.email         = ["shun.matsumoto@pixta.co.jp"]
  gem.description   = %q{Scaffold for Markdown.}
  gem.summary       = %q{Markdown Scaffold}
  gem.homepage      = "https://github.com/shu0115/markdown-scaffold"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "markdown-scaffold"
  gem.require_paths = ["lib"]
  gem.version       = Markdown::Scaffold::VERSION
end
