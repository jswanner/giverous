require 'rubygems'
require File.join(File.dirname(__FILE__), "bin", "common")

gems_dir = File.expand_path(File.join(File.dirname(__FILE__),'gems'))

if File.Directory?(gems_dir)
  $BUNDLE = true
  Gem.clear_paths
  Gem.path.replace([File.expand_path(gems_dir)])
  ENV["PATH"] = "#{File.dirname(__FILE__)}:#{ENV["PATH"]}"
end

require 'merb-core'

Merb::Config.setup(:merb_root   => ".",
                   :environment => ENV['RACK_ENV'])
Merb.environment = Merb::Config[:environment]
Merb.root = Merb::Config[:merb_root]

use Rack::CommonLogger

Merb::BootLoader.run
run Merb::Rack::Application.new