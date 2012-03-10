# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "despeckle/version"

Gem::Specification.new do |s|
  s.name        = "despeckle"
  s.version     = Despeckle::VERSION
  s.authors     = ["Graham Ashton"]
  s.email       = ["graham@effectif.com"]
  s.homepage    = "https://github.com/gma/despeckle"
  s.summary     = %q{Script to help migrate from RSpect to MiniTest}
  s.description = <<-EOF
RSpec is fine and everything, but now that MiniTest ships with Ruby 1.9
(and comes with the MiniTest::Spec language that's similar to RSpec),
it's easy to give MiniTest a try. This gem provides a command line
script that will do a lot of the drudgery involved in converting a spec
file to MiniTest.
  EOF

  s.rubyforge_project = "despeckle"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  # s.add_runtime_dependency "rest-client"
end
