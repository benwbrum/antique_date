# -*- encoding: utf-8 -*-
require File.expand_path('../lib/antique_date/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ben W. Brumfield"]
  gem.email         = ["benwbrum@gmail.com"]
  gem.description   = %q{Parses dates in antique formats, including Old Style and split dates}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "antique_date"
  gem.require_paths = ["lib"]
  gem.version       = AntiqueDate::VERSION
end
