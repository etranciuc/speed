# -*- encoding: utf-8 -*-
require File.expand_path('../lib/speed/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Guillermo Álvarez"]
  gem.email         = ["guillermo@cientifico.net"]
  gem.description   = %q{Internet speed test for home ussage}
  gem.summary       = %q{A daemon (to be run in your servers), and a client. The main differece between netperf and iperf is that this one only have one way of operation. It download 1Mb and then upload 1Mb.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "speed-test"
  gem.require_paths = ["lib"]
  gem.version       = Speed::VERSION

  gem.add_dependency  "daemons"
end
