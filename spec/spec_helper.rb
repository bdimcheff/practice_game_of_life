$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'game_of_life'
require 'spec'
require 'spec/autorun'
require 'rubygems'
require 'ruby-debug'

Spec::Runner.configure do |config|
  
end
