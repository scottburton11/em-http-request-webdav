# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "em-http-request-webdav/version"

Gem::Specification.new do |s|
  s.name        = "em-http-request-webdav"
  s.version     = EMHttpRequestWebdav::VERSION
  s.authors     = ["Scott Burton"]
  s.email       = ["scottburton11@gmail.com"]
  s.homepage    = "http://github.com/em-http-request-webdav"
  s.summary     = %q{Adds WebDAV-specific HTTP methods to em-http-request}
  s.description = %q{Adds WebDAV-specific HTTP methods to em-http-request. Works with em-synchrony too.}

  s.rubyforge_project = "em-http-request-webdav"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "eventmachine", ">=1.0.0.beta.1"
  s.add_runtime_dependency "em-http-request", ">=1.0.0"
end
